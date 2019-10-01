pipeline {
    agent any
    stages {
    	stage ('Out File') {
	    steps { 
	    	sh 'touch res.txt'
	    }
	}
        stage('Talend ETL') {
            steps {
	    	sh 'echo "ETL job successful" >> res.txt'
            }
        }
	stage('MapReduce') {
	    steps {
	    	sh 'echo "MR job successful" >> res.txt'
	    }
	}
	stage('Data Validation') {
	    steps {
	        sh 'sh countlines.sh'
	    }
	}
	stage('Push to GitHub') {
	    steps {
	    	sh 'git add .'
		sh 'git commit -m "updated"'
		sh 'git push -f origin master'
	    }
	}

     }
}
