
CREATE (king:BAS {name:"King",skill:["management","world_domination","mind_control"]});

// Archer Universe
CREATE (malory:BAS {name:"Malory",skill:["executive_management","sarchasm"]});

CREATE (cyril:BAS {name:"Cyril",skill:["marketing","accounting","carpet_selling","tie_buying"]});
CREATE (cheryl:BAS {name:"Cheryl",skill:["phone_management","papers_management","coffee_management"]});
CREATE (pam:BAS {name:"Pam",skill:["hr_management","speaking","gossiping"]});
CREATE (lana:BAS {name:"Lana",skill:["spying","killing","speaking_french"]});
CREATE (sterling:BAS {name:"Sterling",skill:["spying","killing","drinking"]});
CREATE (ray:BAS {name:"Ray",skill:["spying","killing","home_decorating"]});
CREATE (krieger:BAS {name:"Krieger",skill:["human_experimenting","biotech","necromancy"]});

// MAD MEN universe
CREATE (powell:BAS {name:"Powell",skill:["executive_management","advertising","carpet_selling"]});
CREATE (bertram:BAS {name:"Bertram",skill:["executive_management","advertising","carpet_selling"]});
CREATE (guy:BAS {name:"Guy",skill:["operations_management","advertising","carpet_selling"]});

CREATE (joan:BAS {name:"Joan",skill:["mind_control","phone_management","office_management","papers_management","coffee_management","drinking"]});
CREATE (donald:BAS {name:"Donald",skill:["creation_management","advertising","mind_control","drinking","carpet_selling"]});

CREATE (salvatore:BAS {name:"Salvatore",skill:["art_directing","advertising","drinking"]});
CREATE (pete:BAS {name:"Pete",skill:["accounting","drinking"]});
CREATE (harry:BAS {name:"Harry",skill:["advertising","drinking","tv_directing"]});

// GODFATHER universe
CREATE (michael:BAS {name:"Michael",skill:["executive_management","mind_control","killing"]});

CREATE (thomas:BAS {name:"Thomas",skill:["accounting","mind_control","office_management"]});
CREATE (fredo:BAS {name:"Fredo",skill:["operations_management","killing"]});

CREATE (al:BAS {name:"Al",skill:["executive_management","killing","drinking"]});
CREATE (rocco:BAS {name:"Rocco",skill:["executive_management","killing"]});
CREATE (frank:BAS {name:"Frank",skill:["executive_management","killing"]});
CREATE (luca:BAS {name:"Luca",skill:["killing"]});
CREATE (chris:BAS {name:"Chris",skill:["killing"]});
CREATE (donato:BAS {name:"Donato",skill:["killing"]});
CREATE (gaetano:BAS {name:"Gaetano",skill:["killing"]});
CREATE (roberto:BAS {name:"Roberto",skill:["killing"]});
CREATE (william:BAS {name:"William",skill:["killing"]});

// 100 BULLETS Universe
CREATE (augustus:BAS {name:"Augustus",skill:["management","mind_control"]});

CREATE (benito:BAS {name:"Benito",skill:["gambling"]});
CREATE (megan:BAS {name:"Megan",skill:["mind_control","killing"]});
CREATE (javier:BAS {name:"Javier",skill:["management","mind_control"]});
CREATE (graves:BAS {name:"Graves",skill:["executive_management","mind_control","tie_buying","killing"]});

CREATE (lono:BAS {name:"Lono",skill:["killing","violent"]});
CREATE (milo:BAS {name:"Milo",skill:["killing","self_control"]});
CREATE (cole:BAS {name:"Cole",skill:["killing"]});


// Rels to king
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Malory" AND m.name="King" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Powell" AND m.name="King" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Bertram" AND m.name="King" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Guy" AND m.name="King" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Michael" AND m.name="King" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Augustus" AND m.name="King" CREATE n-[:WORKS_FOR]->m;


// Rels to Malory
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Cyril" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Cheryl" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Pam" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Lana" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Sterling" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Ray" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Krieger" AND m.name="Malory" CREATE n-[:WORKS_FOR]->m;

// Rels to Bertram
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Donald" AND m.name="Bertram" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Joan" AND m.name="Bertram" CREATE n-[:WORKS_FOR]->m;

// Rels to Donald
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Salvatore" AND m.name="Donald" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Pete" AND m.name="Donald" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Harry" AND m.name="Donald" CREATE n-[:WORKS_FOR]->m;

// Rels to Michael
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Thomas" AND m.name="Michael" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Fredo" AND m.name="Michael" CREATE n-[:WORKS_FOR]->m;

// Rels to Fredo
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Al" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Rocco" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Frank" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Luca" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Chris" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Donato" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Gaetano" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Roberto" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="William" AND m.name="Fredo" CREATE n-[:WORKS_FOR]->m;

// Rels to Augustus
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Benito" AND m.name="Augustus" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Megan" AND m.name="Augustus" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Javier" AND m.name="Augustus" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Graves" AND m.name="Augustus" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Lono" AND m.name="Graves" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Milo" AND m.name="Graves" CREATE n-[:WORKS_FOR]->m;
START n=node(*),m=node(*) WHERE n:BAS AND m:BAS AND n.name="Cole" AND m.name="Graves" CREATE n-[:WORKS_FOR]->m;



