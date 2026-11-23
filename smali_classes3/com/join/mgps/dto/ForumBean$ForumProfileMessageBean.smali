.class public Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfileMessageBean"
.end annotation


# static fields
.field public static final TYPE_BEST:Ljava/lang/String; = "best"

.field public static final TYPE_BESTANSWER:Ljava/lang/String; = "bestanswer"

.field public static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field public static final TYPE_PRAISE:Ljava/lang/String; = "praise"

.field public static final TYPE_REPLY:Ljava/lang/String; = "reply"


# instance fields
.field private add_time:J

.field private comment_id:I

.field private from_avatar_src:Ljava/lang/String;

.field private from_nickname:Ljava/lang/String;

.field private from_officialAccount:Z

.field private from_type:Ljava/lang/String;

.field private from_uid:I

.field private message:Ljava/lang/String;

.field private pid:I

.field private posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field private rid:I

.field private svip_level:I

.field private vip_level:I


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
.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->add_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getComment_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->comment_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrom_avatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom_nickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->pid:I

    .line 2
    .line 3
    return v0
.end method

.method public getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->rid:I

    .line 2
    .line 3
    return v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->svip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->vip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public isFrom_officialAccount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_officialAccount:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdd_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->add_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setComment_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->comment_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setComment_pid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_pid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->comment_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrom_avatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from_avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom_nickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from_nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom_officialAccount(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from_officialAccount"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_officialAccount:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFrom_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom_uid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from_uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->from_uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->pid:I

    .line 2
    .line 3
    return-void
.end method

.method public setPosts(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->rid:I

    .line 2
    .line 3
    return-void
.end method

.method public setSvip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "svip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->svip_level:I

    .line 2
    .line 3
    return-void
.end method

.method public setVip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->vip_level:I

    .line 2
    .line 3
    return-void
.end method
