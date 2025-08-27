# Streams

## ABaseStream

Base stream implementation.

## PriceStream

Returns values from another stream.

## SimplePriceStream

Return prices from MT4 (iClose...).

## CustomStream

Custom filled stream.

## StdMAStream

Standard moving averages.

## AOnStream

Abstract class for streams based on another stream.

## VolumeStream

Volume stream.

## IndicatorOutputStream

Stream drawn on the chart.

## StreamPack

Stream pack.

## ConstValueStream

Returns constant value.

## CCIStream

CCI stream.

## ConditionStream

Condition stream.

## MACDStream

MACD stream.

## MAStream

MA stream.

## RSIStream

RSI stream.

## SlopeStream

Slope stream.

## StochStream

Stochastic stream.

## WPRStream

WPR stream.

## AStandardTimeframeBarStream

Base class for bar streams based on a standard timeframe.

## BarStream

Standard bar stream.

## HABarStream

Heiken-Ashi bar stream.

## AbsStream

Return absolute value of a source.

## ChangeStream

Returns change of a source value compared to the previous value.

## D1CustomHourBarStream

D1 custom hour start stream.

## TrueRangeStream

True range stream.

## PivotStream

Pivot stream.

## HighestHighStream

Calculates highest value

## LowestLowStream

Calculates lowest value

## SumOnStream

Sum on stream

## BarsSinceStream

Counts number of bars since last condition pass.

## SimplePriceStream

Price stream based on symbol/timeframe parameters. Uses default price calls

## AStreamBase

Base stream implementation: implements reference counting.

## CrossStream

Puts 1 when two streams cross and 0 otherwise.

## StreamBuffer

Used for internal implementation of streams.

## StDevStream

Standard deviation.

## ACustomStreamBase

Base class for custom streams.

## HighestBarsStream

Equivalent to highestbars from TradingView.

## LowestBarsStream

Equivalent to lowestbars from TradingView.

## ColoredFill

Multi-colored PS-like Fill()

## CandleStreams

Stream of candles

## BarsSinceStreamV2

Counts number of bars since last condition.

## ValueWhenSimpleStream

PineScript-like valuewhen.

## PivotLowStream

PineScript-like pivotlow

## PivotHighStream

PineScript-like pivothigh

## CumOnStream

Calculates cumulative value. Similar to cum() in PineScript

## DateTimeStream

Return date/time of the specified symbol/timeframe for the specified bar of the current chart.

## OBVStream

On balance volume stream

## RisingStream

Returns true when value > than previous (length). Similar to ta.rising from Pine Script

## FallingStream

Returns true when value < than previous (length). Similar to ta.falling from Pine Script

## FixnanStream

Fixes NaN (Not a Number) values in a stream by looking back to find the next valid value. Useful for handling missing or invalid data points.