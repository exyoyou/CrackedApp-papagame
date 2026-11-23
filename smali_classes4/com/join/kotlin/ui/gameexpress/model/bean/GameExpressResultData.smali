.class public final Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\nR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\"\u0004\u0008\u0012\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;",
        "",
        "<init>",
        "()V",
        "the_new_game_list",
        "",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;",
        "getThe_new_game_list",
        "()Ljava/util/List;",
        "setThe_new_game_list",
        "(Ljava/util/List;)V",
        "game_hot_topic_list",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;",
        "getGame_hot_topic_list",
        "setGame_hot_topic_list",
        "hot_game_comment_list",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
        "getHot_game_comment_list",
        "setHot_game_comment_list",
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
.field private game_hot_topic_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hot_game_comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private the_new_game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
.method public final getGame_hot_topic_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->game_hot_topic_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHot_game_comment_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->hot_game_comment_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThe_new_game_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->the_new_game_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setGame_hot_topic_list(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->game_hot_topic_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setHot_game_comment_list(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->hot_game_comment_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setThe_new_game_list(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->the_new_game_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
