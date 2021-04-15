function Initialise ()

   Call( "BeginUpdate" )

end

function Update ( time )
   
   local anythingbehind = Call("SendConsistMessage", 0, "dummy", 0 )
   local anythinginfront = Call("SendConsistMessage", 0, "dummy", 1 )
   if (anythingbehind + anythinginfront) == 1 then
      Call( "Farolim Vermelho Esquerdo Frente:Activate", 1 - anythingbehind )
      Call( "Farolim Vermelho Direito Frente:Activate", 1 - anythingbehind )
      Call( "ActivateNode", "luzcauda01", 1 - anythingbehind )
      Call( "Farolim Vermelho Esquerdo Tras:Activate", 1 - anythinginfront )
      Call( "Farolim Vermelho Direito Tras:Activate", 1 - anythinginfront )
      Call( "ActivateNode", "luzcauda02", 1 - anythinginfront )
   else
      Call( "Farolim Vermelho Esquerdo Frente:Activate", 0)
      Call( "Farolim Vermelho Direito Frente:Activate", 0)
      Call( "ActivateNode", "luzcauda01", 0)
      Call( "Farolim Vermelho Esquerdo Tras:Activate", 0)
      Call( "Farolim Vermelho Direito Tras:Activate", 0)
      Call( "ActivateNode", "luzcauda02", 0)
   end

end