!classDefinition: #Jugador category: #Penales!
Object subclass: #Jugador
	instanceVariableNames: 'fuerzaBase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!Jugador methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 12:12:15'!
fuerzaParaUnPenalConVAR: unVAR conRival: unRival yPelota: unaPelota
	^self subclassResponsibility! !


!Jugador methodsFor: 'getters' stamp: 'kb 9/29/2025 12:07:50'!
fuerzaBase
	^fuerzaBase ! !


!Jugador methodsFor: 'initializing' stamp: 'kb 9/28/2025 21:36:35'!
initializeConFuerzaBase: unaFuerzaBase
	^self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Jugador class' category: #Penales!
Jugador class
	instanceVariableNames: ''!

!Jugador class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 23:42:55'!
suFuerzaBaseEs: unaFuerzaBase
	^self new initializeConFuerzaBase: unaFuerzaBase! !


!classDefinition: #Arquero category: #Penales!
Jugador subclass: #Arquero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!Arquero methodsFor: 'as yet unclassified' stamp: 'kb 9/29/2025 18:08:02'!
evaluarResultadoPenalConArqueroConVAR: unVAR
	^self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Arquero class' category: #Penales!
Arquero class
	instanceVariableNames: ''!

!Arquero class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 21:05:09'!
eligeDireccionAntesDeTiroSuFuerzaBaseEs: fuerza
	^ArqueroQueEligeDireccionAntesDeTiro suFuerzaBaseEs: fuerza! !

!Arquero class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 21:05:18'!
esperaPorTiroYSeAdelantaSuFuerzaBaseEs: fuerza
	^ArqueroQueEsperaPorTiroYSeAdelanta suFuerzaBaseEs: fuerza! !


!classDefinition: #ArqueroQueEligeDireccionAntesDeTiro category: #Penales!
Arquero subclass: #ArqueroQueEligeDireccionAntesDeTiro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!ArqueroQueEligeDireccionAntesDeTiro methodsFor: 'initializing' stamp: 'kb 9/29/2025 18:09:14'!
evaluarResultadoPenalConArqueroConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiro! !

!ArqueroQueEligeDireccionAntesDeTiro methodsFor: 'initializing' stamp: 'kb 9/29/2025 18:09:22'!
fuerzaParaUnPenalConVAR: unVAR conRival: unRival yPelota: unaPelota
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroConRivalYPelota! !

!ArqueroQueEligeDireccionAntesDeTiro methodsFor: 'initializing' stamp: 'kb 9/29/2025 14:20:23'!
initializeConFuerzaBase: unaFuerzaBase
	fuerzaBase := unaFuerzaBase.! !


!classDefinition: #ArqueroQueEsperaPorTiroYSeAdelanta category: #Penales!
Arquero subclass: #ArqueroQueEsperaPorTiroYSeAdelanta
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!ArqueroQueEsperaPorTiroYSeAdelanta methodsFor: 'initializing' stamp: 'kb 9/29/2025 18:09:25'!
evaluarResultadoPenalConArqueroConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelanta! !

!ArqueroQueEsperaPorTiroYSeAdelanta methodsFor: 'initializing' stamp: 'kb 9/29/2025 13:58:30'!
fuerzaParaUnPenalConVAR: unVAR conRival: unRival yPelota: unaPelota
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaConRivalYPelota! !

!ArqueroQueEsperaPorTiroYSeAdelanta methodsFor: 'initializing' stamp: 'kb 9/28/2025 21:58:32'!
initializeConFuerzaBase: unaFuerzaBase
	fuerzaBase := unaFuerzaBase.
! !


!classDefinition: #Delantero category: #Penales!
Jugador subclass: #Delantero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!


!Delantero methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 18:33:56'!
direccionParaUnPenalConVAR: unVAR conPelota: unaPelota
	^self subclassResponsibility! !

!Delantero methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 17:27:36'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroConVar: unVAR
	^self subclassResponsibility! !

!Delantero methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 17:27:27'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroConVar: unVAR
	^self subclassResponsibility! !

!Delantero methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 12:24:22'!
fuerzaDeUnPenalConArqueroQueEligeDireccionAntesDeTiroConUnVar: unVAR yUnaPelota: unaPelota
	^self subclassResponsibility! !

!Delantero methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 12:19:20'!
fuerzaDeUnPenalConArqueroQueEsperaPorTiroYSeAdelantaConUnVar: unVAR yUnaPelota: unaPelota
	^self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Delantero class' category: #Penales!
Delantero class
	instanceVariableNames: ''!

!Delantero class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 21:23:12'!
decideTirarAColocarSuFuerzaBaseEs: fuerza
	^DelanteroQueTiraAColocar suFuerzaBaseEs: fuerza.! !

!Delantero class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 21:23:42'!
decideTirarAMatarSuFuerzaBaseEs: fuerza
	^DelanteroQueTiraAMatar suFuerzaBaseEs: fuerza.! !


!classDefinition: #DelanteroQueTiraAColocar category: #Penales!
Delantero subclass: #DelanteroQueTiraAColocar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!DelanteroQueTiraAColocar methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 13:57:24'!
fuerzaDeUnPenalConArqueroQueEligeDireccionAntesDeTiroConUnVar: unVAR yUnaPelota: unaPelota
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelota! !

!DelanteroQueTiraAColocar methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 13:57:38'!
fuerzaDeUnPenalConArqueroQueEsperaPorTiroYSeAdelantaConUnVar: unVAR yUnaPelota: unaPelota
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelota! !


!DelanteroQueTiraAColocar methodsFor: 'initializing' stamp: 'kb 9/28/2025 22:13:35'!
initializeConFuerzaBase: unaFuerzaBase
	fuerzaBase := unaFuerzaBase * 0.5.! !


!DelanteroQueTiraAColocar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 14:36:22'!
direccionParaUnPenalConVAR: unVAR conPelota: unaPelota
	^unVAR direccionDeTiroDeDelanteroQueTiraAColocarConPelota! !

!DelanteroQueTiraAColocar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 18:09:29'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroConVar: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocar! !

!DelanteroQueTiraAColocar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 18:09:32'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroConVar: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocar! !

!DelanteroQueTiraAColocar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 13:57:13'!
fuerzaParaUnPenalConVAR: unVAR conRival: unRival yPelota: unaPelota
	^unVAR fuerzaDelanteroQueTiraAColocarConPelota! !


!classDefinition: #DelanteroQueTiraAMatar category: #Penales!
Delantero subclass: #DelanteroQueTiraAMatar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!DelanteroQueTiraAMatar methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 13:59:20'!
fuerzaDeUnPenalConArqueroQueEligeDireccionAntesDeTiroConUnVar: unVAR yUnaPelota: unaPelota
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelota! !

!DelanteroQueTiraAMatar methodsFor: 'doubleDispatch - VARconRival' stamp: 'kb 9/29/2025 13:59:24'!
fuerzaDeUnPenalConArqueroQueEsperaPorTiroYSeAdelantaConUnVar: unVAR yUnaPelota: unaPelota
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelota! !


!DelanteroQueTiraAMatar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 14:43:50'!
direccionParaUnPenalConVAR: unVAR conPelota: unaPelota
	^unVAR direccionDeTiroDeDelanteroQueTiraAMatarConPelota! !

!DelanteroQueTiraAMatar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 18:09:38'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroConVar: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatar! !

!DelanteroQueTiraAMatar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 18:09:35'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroConVar: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatar! !

!DelanteroQueTiraAMatar methodsFor: 'doubleDispatch - VAR' stamp: 'kb 9/29/2025 13:59:05'!
fuerzaParaUnPenalConVAR: unVAR conRival: unRival yPelota: unaPelota
	^unVAR fuerzaDelanteroQueTiraAMatarConPelota! !


!DelanteroQueTiraAMatar methodsFor: 'initializing' stamp: 'kb 9/28/2025 22:13:39'!
initializeConFuerzaBase: unaFuerzaBase
	fuerzaBase := unaFuerzaBase.! !


!classDefinition: #Pelota category: #Penales!
Object subclass: #Pelota
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!Pelota methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:01:23'!
fuerzaDeUnPenalConDelanteroQueTiraAColocarYUnVar: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:01:29'!
fuerzaDeUnPenalConDelanteroQueTiraAMatarYUnVar: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:31:18'!
fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarYUnVar: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:31:05'!
fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarYUnVar: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:30:45'!
fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarYUnVar: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:30:52'!
fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarYUnVar: unVAR
	^self subclassResponsibility! !


!Pelota methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 17:56:50'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaConVAR: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 17:57:02'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaConVAR: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 17:57:12'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaConVAR: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 17:57:15'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaConVAR: unVAR
	^self subclassResponsibility! !


!Pelota methodsFor: 'doubleDispatch - VAR - DIRECCION' stamp: 'kb 9/29/2025 14:37:49'!
direccionDeTiroDeDelanteroQueTiraAColocarConPelotaYUnVAR: unVAR
	^self subclassResponsibility! !

!Pelota methodsFor: 'doubleDispatch - VAR - DIRECCION' stamp: 'kb 9/29/2025 14:40:41'!
direccionDeTiroDeDelanteroQueTiraAMatarConPelotaYUnVAR: unVAR
	^self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pelota class' category: #Penales!
Pelota class
	instanceVariableNames: ''!

!Pelota class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 23:48:27'!
jabulaniSudafricanaRapida
	^PelotaJabulani new! !

!Pelota class methodsFor: 'as yet unclassified' stamp: 'kb 9/28/2025 23:48:31'!
playeraLentaCostaAzul
	^PelotaDePlaya new! !


!classDefinition: #PelotaDePlaya category: #Penales!
Pelota subclass: #PelotaDePlaya
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:00:55'!
fuerzaDeUnPenalConDelanteroQueTiraAColocarYUnVar: unVAR
	^unVAR fuerzaDelanteroQueTiraAColocarConPelotaDePlaya ! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:01:03'!
fuerzaDeUnPenalConDelanteroQueTiraAMatarYUnVar: unVAR
	^unVAR fuerzaDelanteroQueTiraAMatarConPelotaDePlaya ! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:33:17'!
fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:33:30'!
fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:34:15'!
fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:34:34'!
fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaDePlaya! !


!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:45'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:48'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:51'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:54'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaDePlaya! !


!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - DIRECCION' stamp: 'kb 9/29/2025 14:38:13'!
direccionDeTiroDeDelanteroQueTiraAColocarConPelotaYUnVAR: unVAR
	^unVAR direccionDeTiroDeDelanteroQueTiraAColocarConPelotaDePlaya! !

!PelotaDePlaya methodsFor: 'doubleDispatch - VAR - DIRECCION' stamp: 'kb 9/29/2025 14:41:32'!
direccionDeTiroDeDelanteroQueTiraAMatarConPelotaYUnVAR: unVAR
	^unVAR direccionDeTiroDeDelanteroQueTiraAMatarConPelotaDePlaya! !


!classDefinition: #PelotaJabulani category: #Penales!
Pelota subclass: #PelotaJabulani
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - DIRECCION' stamp: 'kb 9/29/2025 14:41:15'!
direccionDeTiroDeDelanteroQueTiraAColocarConPelotaYUnVAR: unVAR
	^unVAR direccionDeTiroDeDelanteroQueTiraAColocarConPelotaJabulani! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - DIRECCION' stamp: 'kb 9/29/2025 14:41:24'!
direccionDeTiroDeDelanteroQueTiraAMatarConPelotaYUnVAR: unVAR
	^unVAR direccionDeTiroDeDelanteroQueTiraAMatarConPelotaJabulani! !


!PelotaJabulani methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:31'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaJabulani! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:34'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaJabulani! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:38'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaJabulani ! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - EVALUAR' stamp: 'kb 9/29/2025 18:08:40'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaConVAR: unVAR
	unVAR evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaJabulani ! !


!PelotaJabulani methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:00:40'!
fuerzaDeUnPenalConDelanteroQueTiraAColocarYUnVar: unVAR
	^unVAR fuerzaDelanteroQueTiraAColocarConPelotaJabulani ! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:00:24'!
fuerzaDeUnPenalConDelanteroQueTiraAMatarYUnVar: unVAR
	^unVAR fuerzaDelanteroQueTiraAMatarConPelotaJabulani ! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:33:51'!
fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaJabulani ! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:33:44'!
fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaJabulani ! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:34:52'!
fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaJabulani ! !

!PelotaJabulani methodsFor: 'doubleDispatch - VAR - FUERZA' stamp: 'kb 9/29/2025 12:34:59'!
fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarYUnVar: unVAR
	^unVAR fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaJabulani ! !


!classDefinition: #Penales category: #Penales!
Object subclass: #Penales
	instanceVariableNames: 'arquero delantero puntajeDeArquero puntajeDeDelantero unVAR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!Penales methodsFor: 'var' stamp: 'kb 9/29/2025 16:08:24'!
varDireccionRemateResultante
	^unVAR direccionDeTiro! !

!Penales methodsFor: 'var' stamp: 'kb 9/29/2025 16:22:14'!
varFuerzaResultanteDeAtajada
	^unVAR fuerzaDeArquero! !

!Penales methodsFor: 'var' stamp: 'kb 9/29/2025 16:08:43'!
varFuerzaResultanteDeTiro
	^unVAR fuerzaDeDelantero ! !


!Penales methodsFor: 'getters' stamp: 'kb 9/28/2025 21:53:05'!
puntajeDeArquero
	^puntajeDeArquero.! !

!Penales methodsFor: 'getters' stamp: 'kb 9/28/2025 21:52:59'!
puntajeDeDelantero
	^puntajeDeDelantero.! !


!Penales methodsFor: 'initializing' stamp: 'kb 9/29/2025 16:09:12'!
initializeConDelantero: unDelantero yArquero: unArquero.
	delantero  := unDelantero.
	arquero  := unArquero.
	puntajeDeArquero := 0.
	puntajeDeDelantero := 0.
	unVAR := VAR.! !


!Penales methodsFor: 'evaluarPenal' stamp: 'kb 9/29/2025 16:39:57'!
arbitroPitaConPelota: unaPelota delanteroRemataAlArcoConDireccion: unaDireccionDeTiro arqueroSeLanzaEnDirección: unaDireccionDeArquero

	unVAR := unVAR VARDePenalConDelantero: delantero Arquero: arquero Pelota: unaPelota DireccionDeTiro: unaDireccionDeTiro yDireccionDeArquero: unaDireccionDeArquero.
	
	unVAR evaluarPenal.
	
	puntajeDeArquero := unVAR puntajeArquero.	
	puntajeDeDelantero := unVAR puntajeDelantero.		
	

	
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Penales class' category: #Penales!
Penales class
	instanceVariableNames: ''!

!Penales class methodsFor: 'message errors' stamp: 'kb 9/26/2025 21:19:18'!
conDelantero: delantero yArquero: arquero.
	^self new initializeConDelantero: delantero yArquero: arquero! !

!Penales class methodsFor: 'message errors' stamp: 'NR 9/19/2023 06:12:49'!
direccionArqueroFueraDeRango
	
	^'El arquero debe lanzarse a coordenadas válidas'! !

!Penales class methodsFor: 'message errors' stamp: 'NR 9/19/2023 06:12:32'!
direccionTiroFueraDeRango
	
	^'La pelota debe dirigirse a coordenadas válidas'! !


!classDefinition: #VAR category: #Penales!
Object subclass: #VAR
	instanceVariableNames: 'delantero arquero pelota direccionDeTiro direccionDeArquero puntajeArquero puntajeDelantero'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!VAR methodsFor: 'fuerzaDelanteroQueTiraAColocar' stamp: 'kb 9/29/2025 13:56:17'!
fuerzaDelanteroQueTiraAColocarConPelota
	^pelota fuerzaDeUnPenalConDelanteroQueTiraAColocarYUnVar: self! !

!VAR methodsFor: 'fuerzaDelanteroQueTiraAColocar' stamp: 'kb 9/29/2025 12:07:26'!
fuerzaDelanteroQueTiraAColocarConPelotaDePlaya
	^delantero fuerzaBase * 0.8! !

!VAR methodsFor: 'fuerzaDelanteroQueTiraAColocar' stamp: 'kb 9/29/2025 12:08:18'!
fuerzaDelanteroQueTiraAColocarConPelotaJabulani
	^delantero fuerzaBase ! !


!VAR methodsFor: 'fuerzaDelanteroQueTiraAMatar' stamp: 'kb 9/29/2025 13:56:34'!
fuerzaDelanteroQueTiraAMatarConPelota
	^pelota fuerzaDeUnPenalConDelanteroQueTiraAMatarYUnVar: self! !

!VAR methodsFor: 'fuerzaDelanteroQueTiraAMatar' stamp: 'kb 9/29/2025 12:08:58'!
fuerzaDelanteroQueTiraAMatarConPelotaDePlaya
	^delantero fuerzaBase ! !

!VAR methodsFor: 'fuerzaDelanteroQueTiraAMatar' stamp: 'kb 9/29/2025 12:08:48'!
fuerzaDelanteroQueTiraAMatarConPelotaJabulani
	^delantero fuerzaBase *1.2! !


!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 13:55:12'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaConRivalYPelota
	^delantero fuerzaDeUnPenalConArqueroQueEsperaPorTiroYSeAdelantaConUnVar: self yUnaPelota: pelota! !

!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 13:55:20'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelota
	^pelota fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarYUnVar: self! !

!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 14:18:24'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaDePlaya
	^arquero fuerzaBase ! !

!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 14:18:34'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaJabulani
	^arquero fuerzaBase ! !

!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 13:55:35'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelota
	^pelota fuerzaDeUnPenalConUnArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarYUnVar: self! !

!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 14:18:38'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaDePlaya
	^arquero fuerzaBase! !

!VAR methodsFor: 'fuerzaArqueroQueEsperaYSeAdelanta' stamp: 'kb 9/29/2025 14:18:42'!
fuerzaDeArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaJabulani
	^arquero fuerzaBase! !


!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 13:54:15'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroConRivalYPelota
	^delantero fuerzaDeUnPenalConArqueroQueEligeDireccionAntesDeTiroConUnVar: self yUnaPelota: pelota! !

!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 13:54:28'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelota
	^pelota fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarYUnVar: self! !

!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 14:16:50'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaDePlaya
	^arquero fuerzaBase *2! !

!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 14:12:53'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaJabulani
	^arquero fuerzaBase * 1.5! !

!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 13:54:43'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelota
	^pelota fuerzaDeUnPenalConUnArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarYUnVar: self! !

!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 14:18:52'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaDePlaya
	^arquero fuerzaBase! !

!VAR methodsFor: 'fuerzaArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 14:18:56'!
fuerzaDeArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaJabulani
	^arquero fuerzaBase! !


!VAR methodsFor: 'initializing' stamp: 'kb 9/29/2025 14:56:20'!
initializeConDelantero: unDelantero Arquero: unArquero Pelota: unaPelota DireccionDeTiro: unaDireccionDeTiro yDireccionDeArquero: unaDireccionDeArquero 
	delantero := unDelantero.
	arquero := unArquero.
	pelota := unaPelota.
	direccionDeTiro := unaDireccionDeTiro.
	direccionDeArquero := unaDireccionDeArquero. ! !


!VAR methodsFor: 'direccionDeTiroDeDelanteroQueTiraAColocar' stamp: 'kb 9/29/2025 14:37:32'!
direccionDeTiroDeDelanteroQueTiraAColocarConPelota
	^pelota direccionDeTiroDeDelanteroQueTiraAColocarConPelotaYUnVAR: self! !

!VAR methodsFor: 'direccionDeTiroDeDelanteroQueTiraAColocar' stamp: 'kb 9/29/2025 14:38:35'!
direccionDeTiroDeDelanteroQueTiraAColocarConPelotaDePlaya
	^direccionDeTiro! !

!VAR methodsFor: 'direccionDeTiroDeDelanteroQueTiraAColocar' stamp: 'kb 9/29/2025 14:38:39'!
direccionDeTiroDeDelanteroQueTiraAColocarConPelotaJabulani
	^direccionDeTiro! !


!VAR methodsFor: 'direccionDeTiroDeDelanteroQueTiraAMatar' stamp: 'kb 9/29/2025 14:39:41'!
direccionDeTiroDeDelanteroQueTiraAMatarConPelota
	^pelota direccionDeTiroDeDelanteroQueTiraAMatarConPelotaYUnVAR: self! !

!VAR methodsFor: 'direccionDeTiroDeDelanteroQueTiraAMatar' stamp: 'kb 9/29/2025 14:50:25'!
direccionDeTiroDeDelanteroQueTiraAMatarConPelotaDePlaya
	self direccionDeTiroAlAngulo ifTrue: [^self centrarTiro].
	^self aumentarAlturaTiro! !

!VAR methodsFor: 'direccionDeTiroDeDelanteroQueTiraAMatar' stamp: 'kb 9/29/2025 14:51:10'!
direccionDeTiroDeDelanteroQueTiraAMatarConPelotaJabulani
	self direccionDeTiroAlAngulo ifTrue: [^self centrarTiro ].
	^direccionDeTiro! !


!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:56:32'!
arqueroTieneMasFuerzaQueDelantero

	^ self fuerzaDeDelantero <= self fuerzaDeArquero! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 16:24:32'!
aumentarAlturaTiro

	^direccionDeTiro x @ (direccionDeTiro y + 2)! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 16:24:37'!
centrarTiro

	^direccionDeTiro x @ 1! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:43:40'!
compararAltura

	^ direccionDeTiro y = direccionDeArquero y! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:44:33'!
compararAncho

	^ direccionDeTiro x = direccionDeArquero x! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:44:15'!
compararDireccion

	^ direccionDeTiro = direccionDeArquero! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 14:45:34'!
direccionDeTiroAlAngulo
	^(direccionDeTiro x = 0 or: direccionDeTiro x = 2) & (direccionDeTiro y ~= 1)! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:59:16'!
evaluarSiArqueroAtajoConComparacion: unaComparacion

	^ (unaComparacion & self arqueroTieneMasFuerzaQueDelantero) ifTrue: [ self noSeMetioGol ] ifFalse: [ self metioGol ]! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:52:18'!
metioGol
	puntajeArquero := 0.
	puntajeDelantero  := 1.! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:52:42'!
noSeMetioGol
	puntajeArquero := 1.
	puntajeDelantero  := 0.! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 19:00:37'!
revisarSiEsGolUsandoComparacion: unaComparacion

		self tiroAlArco ifTrue: [self evaluarSiArqueroAtajoConComparacion: unaComparacion] ifFalse: [ self noSeMetioGol ].! !

!VAR methodsFor: 'private' stamp: 'kb 9/29/2025 18:51:52'!
tiroAlArco

	^ direccionDeTiro between: 0@0 and: 2@2! !


!VAR methodsFor: 'doubleDispatch - Jugador' stamp: 'kb 9/29/2025 14:57:39'!
direccionDeArquero
	^direccionDeArquero ! !

!VAR methodsFor: 'doubleDispatch - Jugador' stamp: 'kb 9/29/2025 18:22:55'!
direccionDeTiro
	^direccionDeTiro ! !

!VAR methodsFor: 'doubleDispatch - Jugador' stamp: 'kb 9/29/2025 12:47:09'!
fuerzaDeArquero
	^arquero fuerzaParaUnPenalConVAR: self conRival: delantero yPelota: pelota! !

!VAR methodsFor: 'doubleDispatch - Jugador' stamp: 'kb 9/29/2025 12:47:00'!
fuerzaDeDelantero
	^delantero fuerzaParaUnPenalConVAR: self conRival: arquero yPelota: pelota! !


!VAR methodsFor: 'getters' stamp: 'kb 9/29/2025 16:38:16'!
puntajeArquero
	^puntajeArquero ! !

!VAR methodsFor: 'getters' stamp: 'kb 9/29/2025 16:38:07'!
puntajeDelantero
	^puntajeDelantero ! !


!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 17:26:55'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiro
	delantero evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroConVar: self! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 18:07:22'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocar
	pelota evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaConVAR: self! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 18:47:29'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaDePlaya
	self revisarSiEsGolUsandoComparacion: self compararDireccion ! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 18:47:45'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAColocarConPelotaJabulani
	self revisarSiEsGolUsandoComparacion: self compararDireccion ! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 18:07:16'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatar
	pelota evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaConVAR: self! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 18:47:56'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaDePlaya
	self revisarSiEsGolUsandoComparacion: self compararAltura! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEligeDireccionAntesDeTiro' stamp: 'kb 9/29/2025 18:48:08'!
evaluarResultadoPenalConArqueroQueEligeDireccionAntesDeTiroContraDelanteroQueTiraAMatarConPelotaJabulani
	self revisarSiEsGolUsandoComparacion: self compararAncho! !


!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 17:27:02'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelanta
	delantero evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroConVar: self! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 18:06:58'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocar
	pelota evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaConVAR: self! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 18:52:18'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaDePlaya
	self metioGol! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 18:48:26'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAColocarConPelotaJabulani
	self revisarSiEsGolUsandoComparacion: self compararAncho! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 18:07:02'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatar
	pelota evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaConVAR: self! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 18:52:42'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaDePlaya
	self noSeMetioGol.! !

!VAR methodsFor: 'evaluarPenalConArqueroQueEsperaPorTiroYSeAdelanta' stamp: 'kb 9/29/2025 18:52:18'!
evaluarResultadoPenalConArqueroQueEsperaPorTiroYSeAdelantaContraDelanteroQueTiraAMatarConPelotaJabulani
	self metioGol! !


!VAR methodsFor: 'evaluarPenal' stamp: 'kb 9/29/2025 18:29:05'!
evaluarPenal

	direccionDeArquero := self direccionDeArquero.
	
	direccionDeTiro := delantero direccionParaUnPenalConVAR: self conPelota: pelota.
	
	arquero evaluarResultadoPenalConArqueroConVAR: self.
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'VAR class' category: #Penales!
VAR class
	instanceVariableNames: ''!

!VAR class methodsFor: 'as yet unclassified' stamp: 'kb 9/29/2025 16:21:05'!
VARDePenalConDelantero: unDelantero Arquero: unArquero Pelota: unaPelota DireccionDeTiro: unaDireccionDeTiro yDireccionDeArquero: unaDireccionDeArquero
	
	self throwError: [^self error: Penales direccionTiroFueraDeRango ] IfUnvalidDirection: unaDireccionDeTiro.
	self throwError: [^self error: Penales direccionArqueroFueraDeRango ] IfUnvalidDirection: unaDireccionDeArquero.
	
	^self new initializeConDelantero: unDelantero Arquero: unArquero Pelota: unaPelota DireccionDeTiro: unaDireccionDeTiro yDireccionDeArquero: unaDireccionDeArquero ! !

!VAR class methodsFor: 'as yet unclassified' stamp: 'kb 9/29/2025 16:14:48'!
throwError: unError IfUnvalidDirection: unaDireccion

	[unaDireccion between: 0@0 and: 2@2] value ifFalse: unError! !


!classDefinition: #PenalesTest category: #Penales!
TestCase subclass: #PenalesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Penales'!

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test01DelanteroNoPuedeApuntarHaciaAfueraDelPaloIzquierdo
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: -1@0 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionTiroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test02DelanteroNoPuedeApuntarHaciaAfueraDelPaloDerecho
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 3@0 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionTiroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:06'!
test03DelanteroNoPuedeApuntarHaciaAbajoDelArco
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@-1 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionTiroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test04DelanteroNoPuedeApuntarHaciaArribaDelTravesaño
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@3 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionTiroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test05ArqueroNoPuedePasarseDelPaloIzquierdo
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: -1@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionArqueroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test06ArqueroNoPuedePasarseDelPaloDerecho
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 3@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionArqueroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:06'!
test07ArqueroNoPuedeMeterseAbajoDeLaTierra
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@-1.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionArqueroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test08ArqueroNoPuedeSaltarPorEncimaDelTravesaño
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@3.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penales direccionArqueroFueraDeRango equals: error messageText.
			self assert: 0 equals: juegoPenales puntajeDeDelantero.
			self assert: 0 equals: juegoPenales puntajeDeArquero.]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test09DireccionesDiferentesGolDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"Caso general del juego..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 0@1.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante
	"varXXXX es por VAR, de 'Video Assistant Referee'"! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test10MismasDireccionesInsuficienteFuerzaGolDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"Caso general del juego..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 10.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test11MismasDireccionesSuficienteFuerzaAtajaArquero
	
	| arquero delantero juegoPenales pelota |
	
	"Caso general del juego..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:08'!
test12DelanteroQueTiraAColocarPierde50PorcFuerza
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"(delantero sacrificia potencia para ganar mayor precisión)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 50.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 50 equals: juegoPenales varFuerzaResultanteDeTiro.! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:34'!
test13ArqueroQueEligeAntesDeTiroVsJabulaniAColocarSuma50PorcFuerzaExtra
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"El Arquero que elige donde tirarse antes de un tiro a colocar de jabulani gana 50% de su fuerza extra..."
	"(el arquero llega más cómodo y aprovecha mejor su fuerza)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 34.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@2.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 0@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 50 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 51 equals: juegoPenales varFuerzaResultanteDeAtajada.! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:34'!
test14FuerzaInsuficienteDeArqueroQueEligeAntesDeTiroVsJabulaniAColocar
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"El Arquero que elige adonde tirarse antes de un tiro a colocar de jabulani gana 50% de su fuerza extra..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 32.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@2.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 0@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 50 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 48 equals: juegoPenales varFuerzaResultanteDeAtajada.! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test15ArqueroQueEsperaPorTiroYSeAdelantaVsJabulaniAColocarIgnoraAlturaTiro
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"El Arquero que espera y se adelanta ante un tiro de jabulani a colocar ignora la 2da coordenada (altura) al atajar..."	
	"(al adelanterse encara la pelota antes de que su elevación se transforme en un problema)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero  esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 50.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 0@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:08'!
test16PelotaPlayeraUsadaAColocarLeHacePerder20PorcFuerzaExtraAlDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"La humilde pelota playera le hace perder un 20% de fuerza adicional al delantero que la use para colocar... (no importa el arquero)"
	"(no debería ser reglamentaria... al menos no es de trapo, nos responden)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 1.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@2 arqueroSeLanzaEnDirección: 1@2.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeTiro! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:34'!
test17ArqueroQueEligeAntesDeTiroVsPlayeraAColocarSuma100PorcFuerzaExtra
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"La humilde pelota playera le hace perder un 20% adicional de fuerza al delantero que la use para colocar... (no importa el arquero)"
	"Arquero que elige donde lanzarse antes de un remate de una pelota playera lenta a colocar, gana un 100% de su fuerza extra..."
	"(a quien madruga...)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 20.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 0@0 equals: juegoPenales varDireccionRemateResultante.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeAtajada! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:34'!
test18FuerzaInsuficienteDeArqueroQueEligeAntesDeTiroVsPlayeraAColocar
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"La humilde pelota playera le hace perder un 20% adicional de fuerza al delantero que la use para colocar... (no importa el arquero)"
	"Arquero que elige donde lanzarse antes de un remate de una pelota playera lenta a colocar, gana un 100% de su fuerza extra..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 19.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 0@0 equals: juegoPenales varDireccionRemateResultante.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 38 equals: juegoPenales varFuerzaResultanteDeAtajada! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test19ArqueroQueEsperaPorTiroYSeAdelantaVsPlayeraAColocarEsDescubiertoYPuntoParaDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"Arquero que espera y se adelanta ante tiro con la lenta pelota playera, siempre es descubierto por el Árbitro, y el punto se le otorga al Delantero..."
	"(lo que servía de ventaja ante la Jabulani rápida, acá es tan obvio por lo que tarda en llegar la pelota al arco, que marchás preso...)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero  esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 0@0 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:34:52'!
test20DelanteroTiraAMatarAlAnguloInferiorIzquierdoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	.
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:34:47'!
test21DelanteroTiraAMatarAlAnguloSuperiorIzquierdoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@2.
	
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:34:41'!
test22DelanteroTiraAMatarAlAnguloInferiorDerechoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@0 arqueroSeLanzaEnDirección: 2@0.
	
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:34:36'!
test23DelanteroTiraAMatarAlAnguloSuperiorDerechoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:34:29'!
test24DelanteroTiraAMatarNoAlAnguloMantieneDireccionTiro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@2 arqueroSeLanzaEnDirección: 1@1.

	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:08'!
test25DelanteroTiraAMatarUsa100PorcFuerzaBase
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:150.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@0 arqueroSeLanzaEnDirección: 2@0.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante.
	self assert: 150 equals: juegoPenales varFuerzaResultanteDeTiro! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:08'!
test26DelanteroTiraAMatarConJabulaniGana20PorcFuerzaExtra
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando la jabulani rápida, el Delantero gana un 20% de fuerza extra... (no importa arquero)"
	"(Jabulani a matar es la elección de los guerreros Z)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 120.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@1.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante.
	self assert: 120 equals: juegoPenales varFuerzaResultanteDeTiro.! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:42:08'!
test27FuerzaInsuficienteDeArqueroQueEligeAntesDeTiroVsJabulaniAMatar
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando la jabulani rápida, el Delantero gana un 20% de fuerza extra... (no importa arquero)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 119.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@1.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante.
	self assert: 120 equals: juegoPenales varFuerzaResultanteDeTiro.! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:06'!
test28ArqueroQueEligeAntesDeTiroVsJabulaniAMatarIgnoraAlturaTiro
	
	| arquero delantero juegoPenales pelota |
	
	"El Arquero que elige donde tirarse antes de un tiro de jabulani a matar, ignora la 2da coordenada (altura) al atajar..."		
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test29ArqueroQueEsperaPorTiroYSeAdelantaVsJabulaniAMatarNuncaAtaja
	
	| arquero delantero juegoPenales pelota |
	
	"El Arquero que espera a ver la dirección del remate de una pelota jabulani rápida a matar antes de lanzarse, nunca la ataja sin importar nada, siquiera que se adelantó..."	
	"(su poder era de más de 9000!! era impresionante, no podía moverme, sólo la ví pasar... f )"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@1 arqueroSeLanzaEnDirección: 1@1.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 1@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test30DelanteroQueNoPateaAlAnguloConPlayeraAMatarSuma2AAlturaDeDireccionPelotaAdentro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	"(y voló.. y me hizo volar... y yo volé de él...  pero acá por la arbolada... y el voló.. y se estrelló por acá por la pared...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@0 arqueroSeLanzaEnDirección: 1@0.
	
	self assert: 1 equals: juegoPenales puntajeDeDelantero.
	self assert: 0 equals: juegoPenales puntajeDeArquero.
	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test31DelanteroQueNoPateaAlAnguloConPlayeraAMatarSuma2AAlturaDeDireccionPelotaAfuera
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	"(El caso auspiciado por el Pipita...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@1 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 0@3 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test32ArqueroQueEligeAntesDeTiroVsPlayeraAMatarAlAnguloIgnoraAnchoTiro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si el arquero elige donde tirarse antes del tiro a matar de la pelota playera, ignora la 1ra coordenada del remate (ancho) al atajar..."
	"(con agacharse, quedarse parado, o saltar le alcanza...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 2@1.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 18:39:22'!
test33ArqueroQueEligeAntesDeTiroVsPlayeraAMatarNoAlAnguloIgnoraAnchoTiro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	"Si el arquero elige donde tirarse antes del tiro a matar de la pelota playera, ignora la 1ra coordenada del remate (ancho) al atajar..."
	"(con agacharse, quedarse parado, o saltar le alcanza...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 100.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@0 arqueroSeLanzaEnDirección: 0@2.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'NR 9/24/2023 06:41:05'!
test34ArqueroQueEsperaPorTiroYSeAdelantaVsPlayeraAMatarSiempreAtaja
	
	| arquero delantero juegoPenales pelota |
	
	"El Arquero que espera y se adelanta ante una pelota playera lenta a matar, siempre la ataja sin importar nada..."	
	"(como la pelota es taaaan lentaaa, el arquero se puede ir a tomar un cafe, verse una serie, volver y aún atajar la pelota habiendose tirado a cualquier lado. Pero igual es más rapida que cuando se la tira a colocar, donde indefectiblemente el arbitro lo detecta...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 1.
	
	juegoPenales := Penales conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 0 equals: juegoPenales puntajeDeDelantero.
	self assert: 1 equals: juegoPenales puntajeDeArquero.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante! !
