.class Lcn/fly/commons/w$c$1$1;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/w$c$1;->onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/w$c$1;


# direct methods
.method constructor <init>(Lcn/fly/commons/w$c$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/w$c$1$1;->a:Lcn/fly/commons/w$c$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v2, "[LGSM] UCLR"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Lcn/fly/commons/w;->a(I)Lcn/fly/tools/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcn/fly/commons/w$b;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2}, Lcn/fly/commons/w$b;-><init>(Lcn/fly/commons/w$1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcn/fly/tools/a;->a(Lcn/fly/tools/a$a;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-static {v0}, Lcn/fly/commons/w;->a(I)Lcn/fly/tools/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcn/fly/commons/w$b;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcn/fly/commons/w$b;-><init>(Lcn/fly/commons/w$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcn/fly/tools/a;->a(Lcn/fly/tools/a$a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
