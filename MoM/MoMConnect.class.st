Class {
	#name : #MoMConnect,
	#superclass : #Object,
	#category : #MoM
}

{ #category : #'class initialization' }
MoMConnect class >> initialize [ 

	TinyLogger default 
	    ensureFileLoggerNamed: 'D:\Progress.log'; "Add the file logger only if not already"
	    clearLog "This will delete the previous 'Progress.log' file".
]

{ #category : #'as yet unclassified' }
MoMConnect class >> populateTestData [

	MoM new
	   oname: 'HANAN';
	   addAction: (MoMAction new oname: 'Cook');
	   addAction: (MoMAction new oname: 'Pet');
	   addAction: (MoMAction new oname: 'Love');
	   save.

	MoM new
	   oname: 'MARIAM';
	   addAction: (MoMAction new oname: 'Draw');
	   addAction: (MoMAction new oname: 'Dance');
	   save.

	MoM new
	   oname: 'MOHAMMAD';
	   addAction: (MoMAction new oname: 'Code');
	   addAction: (MoMAction new oname: 'Play');
	   save.

	MoM new
	   oname: 'NADIN';
	   addAction: (MoMAction new oname: 'Study');
	   addAction: (MoMAction new oname: 'Pray');
	   save.

	MoM new
	   oname: 'NOUREN';
	   addAction: (MoMAction new oname: 'Code');
	   addAction: (MoMAction new oname: 'Play');
	   save.
]

{ #category : #initialization }
MoMConnect class >> setUpConnection [
	| repository |
    repository  := VOMongoRepository 
            host: VOMongoRepository defaultHost   "'localhost:27017'"
            database: 'test8'
            username: 'admin'
            password: 'admin'.
        repository  enableSingleton .

	^ repository 

"	| repository |
        repository := VOMemoryRepository new.
        repository enableSingleton."
]
