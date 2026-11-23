.class public Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;,
        Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;
    }
.end annotation


# instance fields
.field public config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

.field private fnBtns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private keyboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private mouse:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

.field private xbox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public copy()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->mouse:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->mouse:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 105
    .line 106
    iget-object v3, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    return-object v0
.end method

.method public getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFnBtns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->fnBtns:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyboard()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMouse()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->mouse:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXbox()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setConfig(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setFnBtns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->fnBtns:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyboard(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->keyboard:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setMouse(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->mouse:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setXbox(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->xbox:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
