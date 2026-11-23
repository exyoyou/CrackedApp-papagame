.class public Lcn/fly/commons/c/b;
.super Lcn/fly/commons/c/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/c/h;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "027e1fmfhfnHe]fmfmPilf=fefnfe%h_fffkQeh5fkfehkfi;llHfmfl\'k"

    invoke-static {v2}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "043eFfmfhfnJeGfmfmUilf-fefnfe3hOfffkOehYfkfehkfiPll8fmfl+k.fnhn>hMfffkXehIggfegn hXflfffkZeh"

    invoke-static {v3}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcn/fly/commons/c/h$b;
    .locals 8

    .line 3
    new-instance v0, Lcn/fly/commons/c/h$b;

    invoke-direct {v0}, Lcn/fly/commons/c/h$b;-><init>()V

    const-string v1, "004Cfm,f7fkfe"

    .line 4
    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "044eNfmfhfn,e<fmfmUilf-fefnfeTh%fffk^ehFfkfehkfi1ll,fmflOk]fngghn5h?fffkAeh2ggfeje%fgfQglGh;fl"

    invoke-static {v1}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v1, p0, Lcn/fly/commons/c/h;->b:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcn/fly/commons/c/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/fly/commons/c/h$b;->a:Ljava/lang/String;

    return-object v0
.end method
