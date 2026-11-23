.class public final Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->updateGameUI(Lv2/a;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1",
        "Lcom/join/mgps/callbacks/impl/DownloadNormalCallbackImpl;",
        "onViewClicked",
        "",
        "downView",
        "Lcom/join/mgps/customview/DownloadNormalView;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $item:Lcom/join/mgps/dto/CommonMultiItemBean;

.field final synthetic this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/CommonMultiItemBean;Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 4
    .line 5
    invoke-direct {p0, p3, p1}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    if-eqz v1, :cond_5

    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "searchResultGame"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, v2

    .line 42
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->getKeyword()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v1, v2

    .line 74
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getTypeCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v1, v2

    .line 92
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->getKeyword()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;->$item:Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v1, v0}, Lcom/join/kotlin/base/impl/GInfo;->setExt(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-super {p0, p1}, Lm6/c;->onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
