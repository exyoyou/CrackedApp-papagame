.class public Lcom/join/mgps/dto/RankingInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;
    }
.end annotation


# instance fields
.field private net_game:Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;

.field private new_game:Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;


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
.method public getNet_game()Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingInfoBean;->net_game:Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNew_game()Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingInfoBean;->new_game:Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setNet_game(Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "net_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingInfoBean;->net_game:Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;

    .line 2
    .line 3
    return-void
.end method

.method public setNew_game(Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "new_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingInfoBean;->new_game:Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;

    .line 2
    .line 3
    return-void
.end method
