.class Lcom/join/mgps/activity/MGMainActivity_$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity_;->startIntentOldUserRecom(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/join/mgps/activity/MGMainActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity_;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_$h0;->c:Lcom/join/mgps/activity/MGMainActivity_;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/join/mgps/activity/MGMainActivity_$h0;->b:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_$h0;->c:Lcom/join/mgps/activity/MGMainActivity_;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/join/mgps/activity/MGMainActivity_$h0;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity_;->access$701(Lcom/join/mgps/activity/MGMainActivity_;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
