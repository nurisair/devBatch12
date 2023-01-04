List<case> listC = new List<Case>();

for (Integer i = 0; i < 203; i++) {
    case c = new case();
    c.Subject='There is a bug.';
    c.Description='Kill it';
    c.Origin= 'Web';
    c.Status='New';
    listC.add(c);
}
insert listC;

list<case> getAllCase =[select id, status from case where status ='Working'];
for (case eaCase : getAllCase) {
    eaCase.Status='New';
}
update getAllCase;