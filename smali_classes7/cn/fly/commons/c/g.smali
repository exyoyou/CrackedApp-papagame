.class public Lcn/fly/commons/c/g;
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
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "036bBcjceckcfcjcbchehckcj>iedFcbDeNccchEbeTckfgfkfhdfddekdkcgdkfhfifjdddcfh"

    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "015bIcjceck2g,cfDcWefIeGchckBg_efchcb"

    .line 2
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcn/fly/commons/c/h$b;
    .locals 8

    const-string v0, "053b9cjceckcfcjcbchehckcj9iedJcb.e.ccchEbe\'ck@c3chcb1f<ckfg=iedBekKeKccchObe ddcbCedh1chdech.eGcidkGeRciccch[be"

    .line 3
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v7, Lcn/fly/commons/c/h$b;

    invoke-direct {v7}, Lcn/fly/commons/c/h$b;-><init>()V

    const-string v1, "004EcjYc,chcb"

    .line 5
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcn/fly/commons/c/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcn/fly/commons/c/h$b;->a:Ljava/lang/String;

    const-string v1, "024Uchehedchcech.h>eccbebciZcbOdgchId9difh*dc-ee8feKcb"

    .line 6
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v0, v2}, Lcn/fly/commons/c/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    return-object v7
.end method
