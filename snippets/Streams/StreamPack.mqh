// Stream pack v2.0

class StreamPack : public TIStream<double>
{
   TIStream<double> *_main;
   TIStream<double> *_secondary[];
public:
   StreamPack(TIStream<double> *main)
   {
      _main = main;
   }

   ~StreamPack()
   {
      delete _main;
      int count = ArrayRange(_secondary, 0);
      for (int i = 0; i < count; ++i)
      {
         delete _secondary[i];
      }
   }

   void Add(TIStream<double> *stream)
   {
      int count = ArrayRange(_secondary, 0);
      ArrayResize(_secondary, count + 1);
      _secondary[count] = stream;
   }

   virtual bool GetValues(const int period, const int count, double &val[])
   {
      return _main.GetValues(period, count, val);
   }

   virtual int Size()
   {
      return _main.Size();
   }
};