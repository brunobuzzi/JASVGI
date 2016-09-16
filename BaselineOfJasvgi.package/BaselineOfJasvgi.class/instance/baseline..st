baseline
baseline: spec
  <baseline>
   spec
     for: #'common'
     do: [
		spec project: 'XMLParser' with: [
			spec className: 'ConfigurationOfXMLParser';
				loads: #('default');
				versionString: #'release-2.8.3';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'].
		spec project: 'XPath' with: [
			spec className: 'ConfigurationOfXPath';
				loads: #('default');
				versionString: '1.6.8';
				file: 'ConfigurationOfXPath';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main'].
		spec project: 'XMLWriter' with: [
			spec className: 'ConfigurationOfXMLWriter';
				versionString: #stable;
				file: 'ConfigurationOfXMLWriter';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main';
				loads: #('Core').
				].

		spec package: 'JASVGI' with: [spec requires: #('XMLWriter' 'XPath' 'XMLParser')].

		spec
			group: 'default' with: #('JASVGI').
		]