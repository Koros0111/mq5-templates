// CustomStream v2.0
#include <Streams/AOnStream.mqh>
#include <Streams/StreamBuffer.mqh>

class CustomStream : public AStreamBase
{
   StreamBuffer _data;
   TIStream<double> *_source;
public:
   CustomStream(TIStream<double>* base)
   {
      _source = base;
      _source.AddRef();
   }
   ~CustomStream()
   {
      _source.Release();
   }

   virtual int Size()
   {
      return _source.Size();
   }

   virtual void SetValue(int period, double value)
   {
      _data.EnsureSize(Size());
      _data._data[period] = value;
   }
   
   virtual bool GetSeriesValues(const int period, const int count, double &val[])
   {
      int size = Size();
      _data.EnsureSize(size);
      for (int i = 0; i < count; ++i)
      {
         double value = _data._data[size - 1 - period + i];
         if (value == EMPTY_VALUE)
         {
            return false;
         }
         val[i] = value;
      }
      return true;
   }

   virtual bool GetValues(const int period, const int count, double &val[])
   {
      _data.EnsureSize(Size());
      int bars = iBars(_Symbol, (ENUM_TIMEFRAMES)_Period);
      int oldIndex = bars - period - 1;
      return GetSeriesValues(oldIndex, count, val);
   }
};