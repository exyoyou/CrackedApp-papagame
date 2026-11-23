.class public Lcom/join/mgps/dto/PAPAHomeBeanV7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;,
        Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;
    }
.end annotation


# instance fields
.field private eo_playing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private f_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field private fast_entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private jys_like:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private ng_selection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private ranking_list:Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

.field private recommend_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;",
            ">;"
        }
    .end annotation
.end field

.field private s_scrolling_txt:Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;

.field private s_scrolling_txt_v2:Lcom/join/mgps/dto/SScrollingTxtDTOV2;

.field private s_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field private top_channel:Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;


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
.method public getEo_playing()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->eo_playing:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getF_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->f_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFast_entry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->fast_entry:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJys_like()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->jys_like:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNg_selection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->ng_selection:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->ranking_list:Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->recommend_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_scrolling_txt()Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_scrolling_txt:Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_scrolling_txt_v2()Lcom/join/mgps/dto/SScrollingTxtDTOV2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_scrolling_txt_v2:Lcom/join/mgps/dto/SScrollingTxtDTOV2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->top_channel:Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->recommend_list:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_scrolling_txt:Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->top_channel:Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->fast_entry:Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->eo_playing:Ljava/util/List;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->f_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->jys_like:Ljava/util/List;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->ng_selection:Ljava/util/List;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->ranking_list:Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method public setEo_playing(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eo_playing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->eo_playing:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setF_video_ad(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f_video_ad"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->f_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setFast_entry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fast_entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->fast_entry:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setJys_like(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jys_like"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->jys_like:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setNg_selection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ng_selection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->ng_selection:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRanking_list(Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranking_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->ranking_list:Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->recommend_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setS_scrolling_txt(Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s_scrolling_txt"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_scrolling_txt:Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setS_scrolling_txt_v2(Lcom/join/mgps/dto/SScrollingTxtDTOV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s_scrolling_txt_v2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_scrolling_txt_v2:Lcom/join/mgps/dto/SScrollingTxtDTOV2;

    .line 2
    .line 3
    return-void
.end method

.method public setS_video_ad(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s_video_ad"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->s_video_ad:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setTop_channel(Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top_channel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7;->top_channel:Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 2
    .line 3
    return-void
.end method
