{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit laz_zxing;

interface

uses
  ScanManager, Code93Reader, Code128Reader, ITFReader, MultiFormatOneDReader, 
  OneDReader, Reader, Binarizer, BinaryBitmap, GlobalHistogramBinarizer, 
  HybridBinarizer, LuminanceSource, RGBLuminanceSource, BarcodeFormat, 
  BitArray, Bitmatrix, BitSource, CharacterSetECI, DecodeHintType, 
  DecoderResult, DefaultGridSampler, DetectorResult, Helpers, MathUtils, 
  MultiFormatReader, PerspectiveTransform, ReadResult, ResultMetadataType, 
  ResultPoint, StringUtils, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('laz_zxing', @Register);
end.
