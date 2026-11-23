.class Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/CountDownUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CidCacheTimer"
.end annotation


# instance fields
.field listener:Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->listener:Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->tag:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->listener:Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;->onFinish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->tag:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/utils/CountDownUtil;->cancel(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->listener:Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;->onTick(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
