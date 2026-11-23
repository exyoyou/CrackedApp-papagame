.class Lcom/join/mgps/Util/x2$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/x2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/x2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/x2$a;->a:Lcom/join/mgps/Util/x2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "JIGUANG-TagAliasHelper"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    instance-of v0, v0, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-array v0, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v4, "retry set mobile number"

    .line 22
    .line 23
    aput-object v4, v0, v1

    .line 24
    .line 25
    invoke-static {v2, v0}, Lcom/join/mgps/Util/h1;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget v0, Lcom/join/mgps/Util/x2;->e:I

    .line 29
    .line 30
    add-int/2addr v0, v3

    .line 31
    sput v0, Lcom/join/mgps/Util/x2;->e:I

    .line 32
    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/Util/x2$a;->a:Lcom/join/mgps/Util/x2;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/x2;->b(Lcom/join/mgps/Util/x2;)Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget v4, Lcom/join/mgps/Util/x2;->e:I

    .line 44
    .line 45
    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/Util/x2$a;->a:Lcom/join/mgps/Util/x2;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/join/mgps/Util/x2;->c(Lcom/join/mgps/Util/x2;)Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/Util/x2$a;->a:Lcom/join/mgps/Util/x2;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/Util/x2;->c(Lcom/join/mgps/Util/x2;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget v2, Lcom/join/mgps/Util/x2;->e:I

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/x2;->h(Landroid/content/Context;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v0, "#unexcepted - context was null"

    .line 71
    .line 72
    aput-object v0, p1, v1

    .line 73
    .line 74
    invoke-static {v2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v0, "#unexcepted - msg obj was incorrect"

    .line 81
    .line 82
    aput-object v0, p1, v1

    .line 83
    .line 84
    invoke-static {v2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method
