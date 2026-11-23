.class Lcn/fly/tcp/c/b$1;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/c/b;->a(JLjava/lang/String;IILjava/lang/String;Lcn/fly/tcp/d/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/d/a;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/fly/tcp/c/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/c/b;Lcn/fly/tcp/d/a;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/c/b$1;->f:Lcn/fly/tcp/c/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tcp/c/b$1;->a:Lcn/fly/tcp/d/a;

    .line 4
    .line 5
    iput-wide p3, p0, Lcn/fly/tcp/c/b$1;->b:J

    .line 6
    .line 7
    iput-object p5, p0, Lcn/fly/tcp/c/b$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput p6, p0, Lcn/fly/tcp/c/b$1;->d:I

    .line 10
    .line 11
    iput-object p7, p0, Lcn/fly/tcp/c/b$1;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/c/b$1;->a:Lcn/fly/tcp/d/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/c/b$1;->f:Lcn/fly/tcp/c/b;

    .line 7
    .line 8
    invoke-static {v0}, Lcn/fly/tcp/c/b;->b(Lcn/fly/tcp/c/b;)Lcn/fly/tcp/d/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcn/fly/tcp/c/b$1;->a:Lcn/fly/tcp/d/a;

    .line 13
    .line 14
    iget-object v3, p0, Lcn/fly/tcp/c/b$1;->f:Lcn/fly/tcp/c/b;

    .line 15
    .line 16
    invoke-static {v3}, Lcn/fly/tcp/c/b;->a(Lcn/fly/tcp/c/b;)Lcn/fly/tcp/c/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Lcn/fly/tcp/c/b$a;->a()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v2, v3}, Lcn/fly/tcp/d/b;->a(Lcn/fly/tcp/d/a;I)Lcn/fly/tcp/b/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcn/fly/tcp/b/c;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    move v1, v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "TP rp receipt confirmed"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    move v9, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v9, 0x0

    .line 56
    :goto_1
    iget-object v3, p0, Lcn/fly/tcp/c/b$1;->f:Lcn/fly/tcp/c/b;

    .line 57
    .line 58
    iget-wide v4, p0, Lcn/fly/tcp/c/b$1;->b:J

    .line 59
    .line 60
    iget-object v6, p0, Lcn/fly/tcp/c/b$1;->c:Ljava/lang/String;

    .line 61
    .line 62
    iget v7, p0, Lcn/fly/tcp/c/b$1;->d:I

    .line 63
    .line 64
    iget-object v8, p0, Lcn/fly/tcp/c/b$1;->e:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static/range {v3 .. v9}, Lcn/fly/tcp/c/b;->a(Lcn/fly/tcp/c/b;JLjava/lang/String;ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
