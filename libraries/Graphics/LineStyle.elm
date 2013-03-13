
module Graphics.LineStyle where

import Graphics.Color as Color

data LineCap  = Butt  | Round | Square
data LineJoin = Soft | Sharp | Clip

type LineStyle = {
  color : Color,
  width : Float,
  cap   : LineCap,
  join  : LineJoin,
  miterLimit : Float,
  dashing    : [Int],
  dashOffset : Int
 }

default = {
  color = black,
  width = 1,
  cap   = Butt,
  join  = Miter,
  dashing = [],
  dashOffset = 0,
  miterLimit = 10
 }

solid  clr = { default | color <- clr }
dashed clr = { default | color <- clr, dashing <- [8,4] }
dotted clr = { default | color <- clr, dashing <- [3,3] }