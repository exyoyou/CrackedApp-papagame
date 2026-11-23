.class public Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/bean/PaiWeiDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankListBean"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private cost_coin:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private play_id:Ljava/lang/String;

.field private rank:I

.field private role:Ljava/lang/String;

.field private role_id:Ljava/lang/String;

.field private role_rank:Ljava/lang/String;

.field private roleid:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private use_time:Ljava/lang/String;

.field private video:Ljava/lang/String;


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
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCost_coin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->cost_coin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlay_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->play_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->rank:I

    .line 2
    .line 3
    return v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRole_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role_id:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->roleid:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role_id:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRole_rank()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role_rank:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoleid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->roleid:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role_id:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->roleid:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUse_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->use_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->video:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCost_coin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->cost_coin:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlay_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->play_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->rank:I

    .line 2
    .line 3
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRole_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRole_rank(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->role_rank:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRoleid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->roleid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUse_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->use_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->video:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
