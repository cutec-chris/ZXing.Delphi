unit Helpers;

{
  * Copyright 2008 ZXing authors
  *
  * Licensed under the Apache License, Version 2.0 (the "License");
  * you may not use this file except in compliance with the License.
  * You may obtain a copy of the License at
  *
  *      http://www.apache.org/licenses/LICENSE-2.0
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.

  * Implemented by E. Spelt for Delphi
}
interface

type
  TArray = class
    class function Clone(original: TBoundArray): TBoundArray; static;
    class function CopyInSameArray(const Input: TBoundArray;
      StartIndex: Integer; Len: Integer): TBoundArray; static;
  end;

implementation

class function TArray.Clone(original: TBoundArray): TBoundArray;
var
  i: Integer;
  l: SmallInt;
begin
  l := Length(original);
  SetLength(Result, l);

  for i := 0 to l - 1 do
  begin
    Result[i] := original[i];
  end;
end;

class function TArray.CopyInSameArray(const Input: TBoundArray;
  StartIndex: Integer; Len: Integer): TBoundArray;
var
  i, y: Integer;
begin
  Result := TArray.Clone(Input);

  y := 0;
  for i := StartIndex to (StartIndex + Len -1) do
  begin
    Result[y] := Input[i];
    inc(y);
  end;

end;

end.
