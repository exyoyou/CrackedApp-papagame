.class public Lcom/haima/hmcp/beans/IMEListMessage;
.super Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ime_list"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->event:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/IMEBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->payload:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->payload:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, ";"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v2, :cond_3

    .line 28
    .line 29
    aget-object v5, v1, v4

    .line 30
    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    new-instance v6, Lcom/haima/hmcp/beans/IMEBean;

    .line 39
    .line 40
    invoke-direct {v6}, Lcom/haima/hmcp/beans/IMEBean;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v5, v6, Lcom/haima/hmcp/beans/IMEBean;->name:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    iput v5, v6, Lcom/haima/hmcp/beans/IMEBean;->isDefault:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iput v3, v6, Lcom/haima/hmcp/beans/IMEBean;->isDefault:I

    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-object v0
.end method
