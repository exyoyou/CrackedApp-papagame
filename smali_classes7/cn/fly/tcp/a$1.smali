.class Lcn/fly/tcp/a$1;
.super Lcn/fly/tools/utils/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/a;


# direct methods
.method constructor <init>(Lcn/fly/tcp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/a$1;->a:Lcn/fly/tcp/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tools/utils/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MclGlobal init: start"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcn/fly/tcp/a$1;->a:Lcn/fly/tcp/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcn/fly/tcp/a;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "MclGlobal init: done"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
