.class Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_5

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, -0x7b

    .line 45
    .line 46
    if-eq v2, v3, :cond_2

    .line 47
    .line 48
    const/16 v0, 0x14

    .line 49
    .line 50
    if-eq v2, v0, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->access$300(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    .line 56
    .line 57
    .line 58
    sget-boolean v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->IS_UPPER:Z

    .line 59
    .line 60
    xor-int/2addr v0, v1

    .line 61
    sput-boolean v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->IS_UPPER:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->access$200(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "\u6570"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p2, "num"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->access$200(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->access$100(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->access$400(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->access$400(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;)Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;->onClick(Landroid/view/View;Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_3
    return-void
.end method
