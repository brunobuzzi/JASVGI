baseline
baseline: spec
  <baseline>
   spec
     for: #'common'
     do: [
		spec project: 'XMLParser' with: [
			spec className: 'ConfigurationOfXMLParser';
				loads: #('default');
				versionString: #stable;
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'].
		spec project: 'XPath' with: [
			spec className: 'ConfigurationOfXPath';
				loads: #('default');
				versionString: #stable;
				file: 'ConfigurationOfXPath';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main'].
		spec project: 'XMLWriter' with: [
			spec className: 'ConfigurationOfXMLWriter';
				versionString: #stable;
				file: 'ConfigurationOfXMLWriter';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main';
				loads: #('Core').
				].

		spec baseline: 'Seaside3' with: [
			spec repository: 'github://SeasideSt/Seaside:master/repository'].

		spec package: 'JASVGI' with: [spec requires: #('Seaside3' 'XMLWriter' 'XPath' 'XMLParser')].

		spec
			group: 'default' with: #('JASVGI').
		]