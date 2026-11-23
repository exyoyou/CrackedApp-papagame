.class Lcn/fly/tcp/b$4;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/b;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/fly/tcp/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/b$4;->b:Lcn/fly/tcp/b;

    .line 2
    .line 3
    iput p2, p0, Lcn/fly/tcp/b$4;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b$4;->b:Lcn/fly/tcp/b;

    .line 2
    .line 3
    const/16 v1, 0x1388

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;IZ)Lcn/fly/mcl/TcpStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x18

    .line 13
    .line 14
    invoke-static {v0}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    iget v1, v0, Lcn/fly/mcl/TcpStatus;->code:I

    .line 19
    .line 20
    const/16 v3, 0xa

    .line 21
    .line 22
    if-eq v1, v3, :cond_3

    .line 23
    .line 24
    const/16 v3, 0x1a

    .line 25
    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->a()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcn/fly/tcp/b$4;->b:Lcn/fly/tcp/b;

    .line 40
    .line 41
    iget v1, p0, Lcn/fly/tcp/b$4;->a:I

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    const/16 v2, 0x1e

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v1, 0x16

    .line 55
    .line 56
    invoke-static {v1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatus;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatus;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method
