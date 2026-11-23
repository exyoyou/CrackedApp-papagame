.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnInitCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$28;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HmcpManager.init fail "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "AbsIjkVideoView"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public success()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$28;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v7, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    iput-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setChangeStreamStatus(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$28;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 16
    .line 17
    iget-wide v3, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHPlayTime:J

    .line 18
    .line 19
    iget v5, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPriority:I

    .line 20
    .line 21
    iget v6, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppId:I

    .line 22
    .line 23
    iget-object v8, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mToken:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v9, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mExtraId:Ljava/lang/String;

    .line 26
    .line 27
    const/high16 v10, -0x40800000    # -1.0f

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v10}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->play(Lcom/haima/hmcp/enums/ScreenOrientation;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
