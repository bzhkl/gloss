

module World
        ( eyePos
        , lights
        , objs)
where 
import Object
import Light
import Vec3

type Time = Float

-- | Position of the eye viewing the world
eyePos :: Vec3
eyePos  = Vec3 50 (-100) (-500.0)

-- | Lights in the world
{-# NOINLINE lights #-}
lights :: [Light]
lights =
        [ Light
                (Vec3 300.0 (-300.0) (-100.0))
                (Vec3 150000.0 150000.0 150000.0) ]

                

-- | Objects in the world
{-# NOINLINE objs #-}
objs :: Time -> [Object]
objs time =
        [ Sphere 
                (Vec3 (40 * sin time) 80 0.0)
                20
                (Vec3 1.0 0.3 1.0)
                0.1
                
        , Sphere
                (Vec3 (180.0 * sin time) 0 (180 * cos time))
                80.0
                (Vec3 0.4 0.4 1.0)
                0.8

        , Sphere
                (Vec3 (-180.0 * sin time) 0.0 (-180 * cos time))
                80.0
                (Vec3 0.4 0.4 1.0)
                0.5

        , Sphere
                (Vec3 0.0 (-130.0) (-100.0)) 50.0
                (Vec3 1.0 1.0 1.0)
                0.8
                

        , Sphere
                (Vec3 0 (1000100) 0) 1000000
                (Vec3 1.0 1.0 1.0)
                0.5 

{-
        , Plane
                (Vec3 0.0 100.0 0.0)
                (normaliseV3 (Vec3 0.0 (-1.0) (-0.2)))
                (Vec3 1.0 1.0 1.0)
                0.5
-}
        ]