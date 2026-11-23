.class public final Lcom/efs/sdk/base/core/e/a/d;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getLogEncryptAction()Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/efs/sdk/base/core/e/b;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/efs/sdk/base/core/e/b;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getLogEncryptAction()Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    .line 2
    .line 3
    iget v1, v0, Lcom/efs/sdk/base/core/d/a;->e:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v3, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-nez v1, :cond_2

    .line 13
    .line 14
    const-string v1, "wa"

    .line 15
    .line 16
    iget-object v0, v0, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "startperf"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    .line 37
    .line 38
    iget-byte v1, v0, Lcom/efs/sdk/base/core/d/a;->b:B

    .line 39
    .line 40
    if-ne v3, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/efs/sdk/base/core/d/c;->a:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    :cond_1
    iget v0, v0, Lcom/efs/sdk/base/core/d/a;->c:I

    .line 49
    .line 50
    if-ne v3, v0, :cond_3

    .line 51
    .line 52
    :cond_2
    const/4 v2, 0x1

    .line 53
    :cond_3
    if-eqz v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 60
    .line 61
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getSecret()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    .line 70
    .line 71
    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->encrypt(Ljava/lang/String;[B)[B

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a([B)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 81
    .line 82
    invoke-interface {v0}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->getDeVal()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a(I)V

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
