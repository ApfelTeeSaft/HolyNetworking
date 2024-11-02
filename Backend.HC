// TempleOS Account API Simulation

char username[32] := "apfelteesaft";
char email[64] := "apfelteesaft@example.com";

void DatarouterResponse() {
    Print("204 No Content\n");
}

void Token() {
    // simulate token response lol
    Print("Token Granted\nAccess Token: eg1~h1e35h4tr5h456r4h75r4h8r4h5r45h4r5\n");
    Print("Expires In: 28800\n");
}

void ExternalAuths() {
    Print("External Auths Data\nProvider: example_provider\n");
}

void Account() {
    Print("Account Info\n");
    Print("ID: 1234567890\nDisplayName: %s\nEmail: %s\n", username, email);
}

void EnabledFeatures() {
    Print("Enabled Features:\nFeature1, Feature2, Feature3\n");
}

void CloudStorage() {
    Print("Cloud Storage Data:\nStorage Item 1\nStorage Item 2\n");
}

void Receipts() {
    Print("Receipts Data:\nReceipt ID: 001\nReceipt ID: 002\n");
}

void Friends() {
    Print("Friends List:\nFriend1\nFriend2\n");
}

void BlockList() {
    Print("Block List:\nBlockedUser1\nBlockedUser2\n");
}

void VerifyAccount() {
    Print("Account Verification Status: Verified\n");
}

void SetMtx() {
    Print("Set Mtx Transaction Successful\n");
}

void QueryProfile() {
    Print("Profile Data:\nID: 001\nName: Sample Profile\n");
}

void APIHandler() {
    ClrScr();
    Print("TempleOS Account API Backend\nListening for Routes...\n");

    while (TRUE) {
        int key = KeyPeek();

        if (key == '/') {
            KeyGet();  // Consume '/'
            int a = KeyGet();
            int p = KeyGet();
            int i = KeyGet();
            int slash = KeyGet();
            int r = KeyGet();
            int e = KeyGet();
            int s = KeyGet();
            int p2 = KeyGet();
            int o = KeyGet();
            int n = KeyGet();
            int s2 = KeyGet();
            int e2 = KeyGet();

            if (a == 'a' && p == 'p' && i == 'i' && slash == '/' && 
                r == 'r' && e == 'e' && s == 's' && p2 == 'p' &&
                o == 'o' && n == 'n' && s2 == 's' && e2 == 'e') {
                
                // This would call DatarouterResponse if "/api/response" is typed
                DatarouterResponse();
                Wait(100);
                return;
            }
            // other stuff, won't implement
        }
        Wait(1);
    }
}

APIHandler();