!classDefinition: #AccountTransaction category: #'Portfolio-Ejercicio'!
Object subclass: #AccountTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!AccountTransaction methodsFor: 'value' stamp: 'kb 10/24/2025 21:18:28'!
modifyBalance: aBalance

	self subclassResponsibility! !

!AccountTransaction methodsFor: 'value' stamp: 'HernanWilkinson 9/12/2011 12:25'!
value 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransaction class' category: #'Portfolio-Ejercicio'!
AccountTransaction class
	instanceVariableNames: ''!

!AccountTransaction class methodsFor: 'instance creation' stamp: 'NR 10/17/2019 03:22:00'!
register: aValue on: account

	| transaction |
	
	transaction := self for: aValue.
	account register: transaction.
		
	^ transaction! !


!classDefinition: #Deposit category: #'Portfolio-Ejercicio'!
AccountTransaction subclass: #Deposit
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue

	value := aValue ! !


!Deposit methodsFor: 'value' stamp: 'kb 10/24/2025 21:18:57'!
modifyBalance: aBalance
	
	^aBalance + self value! !

!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value

	^ value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Deposit class' category: #'Portfolio-Ejercicio'!
Deposit class
	instanceVariableNames: ''!

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #Withdraw category: #'Portfolio-Ejercicio'!
AccountTransaction subclass: #Withdraw
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue

	value := aValue ! !


!Withdraw methodsFor: 'value' stamp: 'kb 10/24/2025 21:19:08'!
modifyBalance: aBalance

	^aBalance - self value! !

!Withdraw methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:33'!
value

	^ value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Withdraw class' category: #'Portfolio-Ejercicio'!
Withdraw class
	instanceVariableNames: ''!

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #Assets category: #'Portfolio-Ejercicio'!
Object subclass: #Assets
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Assets methodsFor: 'balance' stamp: 'kb 10/28/2025 21:25:46'!
balance

	self subclassResponsibility! !


!Assets methodsFor: 'testing' stamp: 'kb 10/28/2025 21:25:58'!
hasRegistered: aTransaction

	self subclassResponsibility! !


!Assets methodsFor: 'transactions' stamp: 'kb 10/28/2025 21:26:03'!
transactions

	self subclassResponsibility! !


!classDefinition: #Portafolio category: #'Portfolio-Ejercicio'!
Assets subclass: #Portafolio
	instanceVariableNames: 'assets'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Portafolio methodsFor: 'initialization' stamp: 'kb 10/28/2025 22:09:35'!
add: anAsset
	assets add: anAsset.! !

!Portafolio methodsFor: 'initialization' stamp: 'kb 10/28/2025 21:25:31'!
initialize
	assets := OrderedCollection new.! !


!Portafolio methodsFor: 'balance' stamp: 'kb 10/28/2025 21:41:11'!
balance
	| balance |
	balance := 0.
	assets do: [:anAsset | balance := balance + anAsset balance].
	^balance ! !


!Portafolio methodsFor: 'testing' stamp: 'kb 10/28/2025 21:28:48'!
hasRegistered: aTransaction

	^assets anySatisfy: [:anAsset | anAsset hasRegistered: aTransaction ].! !


!Portafolio methodsFor: 'transactions' stamp: 'kb 10/28/2025 21:31:01'!
transactions

	| transactions |
	transactions := OrderedCollection new.
	assets do: [:anAsset | transactions addAll: anAsset transactions].
	^transactions.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Portafolio class' category: #'Portfolio-Ejercicio'!
Portafolio class
	instanceVariableNames: ''!

!Portafolio class methodsFor: 'as yet unclassified' stamp: 'kb 10/28/2025 22:07:19'!
errorAñadirCuentaQueYaEsta
	^'No se puede añadir una cuenta que ya esta en el portafolio'! !


!classDefinition: #ReceptiveAccount category: #'Portfolio-Ejercicio'!
Assets subclass: #ReceptiveAccount
	instanceVariableNames: 'transactions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!ReceptiveAccount methodsFor: 'initialization' stamp: 'kb 10/24/2025 21:15:29'!
initialize

	transactions := OrderedCollection new.! !


!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
register: aTransaction

	transactions add: aTransaction 
! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
transactions 

	^ transactions copy! !


!ReceptiveAccount methodsFor: 'balance' stamp: 'kb 10/24/2025 21:20:27'!
balance
	| aBalance |
	aBalance := 0.
	transactions do: [ :aTransaction | aBalance := aTransaction modifyBalance: aBalance].
	^aBalance 
! !


!ReceptiveAccount methodsFor: 'testing' stamp: 'NR 10/17/2019 03:28:43'!
hasRegistered: aTransaction

	^ transactions includes: aTransaction 
! !


!classDefinition: #PortafolioTest category: #'Portfolio-Ejercicio'!
TestCase subclass: #PortafolioTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:32:50'!
test01PortafolioVacioTieneBalance0

	self assert: 0 equals: Portafolio new balance.! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:39:57'!
test02PortafolioConCuentasTieneComoBalanceLaSumaDelBalanceDeLasCuentas
	
	| portafolio cuenta1 cuenta2 cuenta3|
	
	portafolio := Portafolio new.
	cuenta1 := ReceptiveAccount new.
	cuenta2 := ReceptiveAccount new.
	cuenta3 := ReceptiveAccount new.
	
	Deposit register: 200 on: cuenta1.
	Deposit register: 100 on: cuenta2.
	Withdraw register: 100 on: cuenta3. 
	
	portafolio add: cuenta1.
	portafolio add: cuenta2.
	portafolio add: cuenta3.
	
	self assert: 200 equals: portafolio balance.! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:52:50'!
test03PortafolioConPortafoliosTieneComoBalanceLaSumaDelBalanceDeLosPortafolios
	
	| portafolio portafolio2 portafolio3 cuenta1 cuenta2 cuenta3|
	
	portafolio := Portafolio new.
	portafolio2 := Portafolio new.
	portafolio3 := Portafolio new.
	
	cuenta1 := ReceptiveAccount new.
	cuenta2 := ReceptiveAccount new.
	cuenta3 := ReceptiveAccount new.
	
	Deposit
		register: 200 on: cuenta1;
		register: 100 on: cuenta2.
		
	Withdraw register: 100 on: cuenta3. 
	
	portafolio2 add: cuenta3.
	
	portafolio3 
		add: cuenta1;
		add: cuenta2.
		
	portafolio
		add: portafolio2;
		add: portafolio3.
		
	self assert: 200 equals: portafolio balance.! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:45:51'!
test04PortafolioVacioNoTieneTransacciones

	self assert: OrderedCollection new equals: Portafolio new transactions.! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:49:10'!
test05PortafolioConCuentasTieneComoTransaccionesLasTransaccionesDeSusCuentas
	
	| portafolio cuenta1 cuenta2 cuenta3 transaccionesDeCuentas |
	
	portafolio := Portafolio new.
	cuenta1 := ReceptiveAccount new.
	cuenta2 := ReceptiveAccount new.
	cuenta3 := ReceptiveAccount new.
	transaccionesDeCuentas := OrderedCollection new.
		
	Deposit register: 200 on: cuenta1.
	Deposit register: 100 on: cuenta2.
	Withdraw register: 100 on: cuenta3. 
	
	portafolio add: cuenta1.
	portafolio add: cuenta2.
	portafolio add: cuenta3.
	
	transaccionesDeCuentas 
		addAll: cuenta1 transactions;
		addAll: cuenta2 transactions;
		addAll: cuenta3 transactions.
		
	self assert: transaccionesDeCuentas equals: portafolio transactions.! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:52:08'!
test06PortafolioConPortafoliosTieneComoTransaccionesLaConcatenacionDeLasTransaccionesDeLosPortafolios
	
	| portafolio portafolio2 portafolio3 cuenta1 cuenta2 cuenta3 transaccionesDePortafolios|
	
	portafolio := Portafolio new.
	portafolio2 := Portafolio new.
	portafolio3 := Portafolio new.
	
	cuenta1 := ReceptiveAccount new.
	cuenta2 := ReceptiveAccount new.
	cuenta3 := ReceptiveAccount new.
	
	transaccionesDePortafolios := OrderedCollection new.
	
	Deposit
		register: 200 on: cuenta1;
		register: 100 on: cuenta2.
		
	Withdraw register: 100 on: cuenta3. 
	
	portafolio2 add: cuenta3.
	
	portafolio3 
		add: cuenta1;
		add: cuenta2.
		
	portafolio
		add: portafolio2;
		add: portafolio3.
		
	transaccionesDePortafolios 
		addAll: portafolio2 transactions;	
		addAll: portafolio3 transactions.
	
	self assert: transaccionesDePortafolios equals: portafolio transactions.! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 21:59:00'!
test07PortafolioVacioNoConoceTransacciones
	| portafolio deposit withdraw |
	
	portafolio := Portafolio new.
	deposit := Deposit new.
	withdraw := Withdraw new.
	
	self deny: (portafolio hasRegistered: deposit).
	self deny: (portafolio hasRegistered: withdraw).! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 22:01:20'!
test08PortafolioConCuentasConoceLasTransaccionesDeSusCuentas
	
	| portafolio cuenta1 cuenta2 cuenta3 deposit1 deposit2 withdraw1 |
	
	portafolio := Portafolio new.
	cuenta1 := ReceptiveAccount new.
	cuenta2 := ReceptiveAccount new.
	cuenta3 := ReceptiveAccount new.
		
	deposit1 := Deposit register: 200 on: cuenta1.
	deposit2 := Deposit register: 100 on: cuenta2.
	withdraw1 := Withdraw register: 100 on: cuenta3. 
	
	portafolio add: cuenta1.
	portafolio add: cuenta2.
	portafolio add: cuenta3.
		
	self assert: (portafolio hasRegistered: deposit1).
	self assert: (portafolio hasRegistered: deposit2).
	self assert: (portafolio hasRegistered: withdraw1).! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 22:03:12'!
test09PortafolioConPortafoliosConoceLasTransaccionesDeSusPortafolios
	
	| portafolio portafolio2 portafolio3 cuenta1 cuenta2 cuenta3 deposit1 deposit2 withdraw1|
	
	portafolio := Portafolio new.
	portafolio2 := Portafolio new.
	portafolio3 := Portafolio new.
	
	cuenta1 := ReceptiveAccount new.
	cuenta2 := ReceptiveAccount new.
	cuenta3 := ReceptiveAccount new.
	
	deposit1 := Deposit register: 200 on: cuenta1.
	deposit2 := Deposit register: 100 on: cuenta2.
		
	withdraw1 := Withdraw register: 100 on: cuenta3. 
	
	portafolio2 add: cuenta3.
	
	portafolio3 
		add: cuenta1;
		add: cuenta2.
		
	portafolio
		add: portafolio2;
		add: portafolio3.

	self assert: (portafolio hasRegistered: deposit1). 
	self assert: (portafolio hasRegistered: deposit2).
	self assert: (portafolio hasRegistered: withdraw1).
	
	! !

!PortafolioTest methodsFor: 'tests' stamp: 'kb 10/28/2025 22:08:53'!
test10PortafolioNoPuedeContenerCuentasRepetidas
	
	| portafolio cuenta |
	
	portafolio := Portafolio new.
	cuenta := ReceptiveAccount new.		
			
	portafolio add: cuenta.
	self should: (portafolio add: cuenta) raise: Error withMessageText: (Portafolio class errorAñadirCuentaQueYaEsta).
	! !


!classDefinition: #ReceptiveAccountTest category: #'Portfolio-Ejercicio'!
TestCase subclass: #ReceptiveAccountTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'NR 11/2/2020 17:13:44'!
test01ReceptiveAccountHaveZeroAsBalanceWhenCreated 

	| account |
	
	account := ReceptiveAccount new.

	self assert: 0 equals: account balance.
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'NR 11/2/2020 17:13:48'!
test02DepositIncreasesBalanceOnTransactionValue 

	| account |
	
	account := ReceptiveAccount  new.
	Deposit register: 100 on: account.
		
	self assert: 100 equals: account balance.
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'NR 11/2/2020 17:13:52'!
test03WithdrawDecreasesBalanceOnTransactionValue 

	| account |
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account.
	Withdraw register: 50 on: account.
		
	self assert: 50 equals: account balance.
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:20:32'!
test04WithdrawValueMustBePositive 

	| account withdrawValue |
	
	account := ReceptiveAccount new.
	withdrawValue := 50.
	
	self assert: withdrawValue equals: (Withdraw register: withdrawValue on: account) value
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:20:46'!
test05ReceptiveAccountKnowsRegisteredTransactions 

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit := Deposit register: 100 on: account.
	withdraw := Withdraw register: 50 on: account.
		
	self assert: (account hasRegistered: deposit).
	self assert: (account hasRegistered: withdraw).
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'NR 5/17/2021 17:29:53'!
test06ReceptiveAccountDoNotKnowNotRegisteredTransactions

	| deposit withdraw account |
	
	account := ReceptiveAccount new.
	deposit :=  Deposit for: 200.
	withdraw := Withdraw for: 50.
		
	self deny: (account hasRegistered: deposit).
	self deny: (account hasRegistered:withdraw).
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'NR 11/2/2020 17:14:01'!
test07AccountKnowsItsTransactions 

	| account1 deposit1 |
	
	account1 := ReceptiveAccount new.
	
	deposit1 := Deposit register: 50 on: account1.
		
	self assert: 1 equals: account1 transactions size.
	self assert: (account1 transactions includes: deposit1).
! !
(Smalltalk at: #qq__ ifAbsentPut: [OrderedCollection new]) add: (#(54 111 118 116 108 54 76 122 123 124 107 112 104 117 123 108 54 104 73 118 121 121 104 121 54 115 112 117 124 127 61 59 54 115 112 117 124 127 61 59 17 54 111 118 116 108 54 76 122 123 124 107 112 104 117 123 108 54 104 73 118 121 121 104 121 54 115 112 117 124 127 61 59 54 115 112 117 124 127 61 59 54 74 124 112 122 92 117 112 125 108 121 122 112 123 128 52 62 61 59 56 53 112 116 104 110 108 17 124 117 112 127 17 83 112 117 124 127 39 61 53 56 59 53 55 52 58 58 52 110 108 117 108 121 112 106 17 127 63 61 102 61 59 17 86 119 108 117 39 90 116 104 115 115 123 104 115 114 39 74 118 110 98 90 119 124 121 100 39 93 84 39 98 83 112 125 108 91 128 119 112 117 110 74 118 80 117 123 108 121 119 121 108 123 108 121 39 93 84 84 104 114 108 121 53 118 122 106 118 110 52 108 108 116 53 58 61 61 57 100 17 95 56 56 17 92 117 112 127 39 105 124 112 115 123 39 118 117 39 86 106 123 39 39 62 39 57 55 57 60 39 56 59 65 55 63 65 57 62 39 74 118 116 119 112 115 108 121 65 39 60 53 59 53 55 39 57 55 56 61 55 61 55 64 17 83 112 125 108 91 128 119 112 117 110 74 118 80 117 123 108 121 119 121 108 123 108 121 39 93 84 84 104 114 108 121 53 118 122 106 118 110 52 108 108 116 53 58 61 61 57 39 124 124 112 107 65 39 57 61 104 55 55 106 105 106 52 58 56 60 107 52 59 106 108 107 52 104 108 60 105 52 61 60 55 58 60 56 56 61 58 106 58 62 39 86 106 123 39 39 62 39 57 55 57 60 17 83 112 125 108 91 128 119 112 117 110 74 118 110 112 123 39 93 84 84 104 114 108 121 53 118 122 106 118 110 52 108 108 116 53 58 61 61 57 39 124 124 112 107 65 39 57 61 104 55 55 106 105 106 52 58 56 60 107 52 59 106 108 107 52 104 108 60 105 52 61 60 55 58 60 56 56 61 58 106 58 62 39 86 106 123 39 39 62 39 57 55 57 60 17 93 84 65 39 57 55 57 60 56 55 55 61 56 64 58 59 39 111 108 121 117 104 117 71 84 104 106 73 118 118 114 52 87 121 118 52 107 108 52 79 108 121 117 104 117 52 57 53 115 118 106 104 115 65 75 118 106 124 116 108 117 123 122 54 93 84 54 118 119 108 117 122 116 104 115 115 123 104 115 114 52 125 116 39 75 104 123 108 65 39 84 118 117 39 86 106 123 39 61 39 56 57 65 58 59 65 57 56 39 57 55 57 60 39 74 118 116 116 112 123 79 104 122 111 65 39 108 107 58 60 59 63 61 39 87 115 124 110 112 117 122 65 39 57 55 57 60 56 55 55 61 56 64 58 59 39 111 108 121 117 104 117 71 84 104 106 73 118 118 114 52 87 121 118 52 107 108 52 79 108 121 117 104 117 52 57 53 115 118 106 104 115 65 75 118 106 124 116 108 117 123 122 54 93 84 54 118 119 108 117 122 116 104 115 115 123 104 115 114 52 125 116 17 17 48 112 38 17 56 55 53 59 56 53 56 55 60 53 58 56 17 119 106 58 56 53 115 104 105 56 56 55 60 53 115 104 105 118 122 53 109 106 108 117 53 124 105 104 53 104 121 17 119 106 58 56 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 56 55 52 57 63 91 57 56 65 57 57 65 55 58 53 56 59 63 64 57 56 52 55 58 65 55 55 17 54 111 118 116 108 54 76 122 123 124 107 112 104 117 123 108 54 104 73 118 121 121 104 121 54 115 112 117 124 127 61 59 54 115 112 117 124 127 61 59 52 92 122 108 121 77 112 115 108 122 54 87 118 121 123 109 118 115 112 118 52 76 113 108 121 106 112 106 112 118 53 122 123 17 64 61 61 55 17 52 52 52 52 52 52 52 52 52 52 17 17 52 52 52 52 52 52 52 52 52 52 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 56 55 52 57 63 91 57 57 65 55 64 65 59 57 53 63 62 55 57 56 59 52 55 58 65 55 55 17 54 111 118 116 108 54 76 122 123 124 107 112 104 117 123 108 54 104 73 118 121 121 104 121 54 115 112 117 124 127 61 59 54 115 112 117 124 127 61 59 52 92 122 108 121 77 112 115 108 122 54 77 112 115 108 86 124 123 122 54 87 118 121 123 109 118 115 112 118 52 76 113 108 121 106 112 106 112 118 53 122 123 17 56 58 63 56 56 17 52 52 52 52 52 52 52 52 52 52 17 17))!