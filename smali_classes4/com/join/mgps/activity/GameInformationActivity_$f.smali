.class Lcom/join/mgps/activity/GameInformationActivity_$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity_;->updateView(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/activity/GameInformationActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$parise",
            "val$parseNUmber",
            "val$success",
            "val$number"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->f:Lcom/join/mgps/activity/GameInformationActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->c:Landroid/widget/TextView;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->f:Lcom/join/mgps/activity/GameInformationActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->c:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity_$f;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/GameInformationActivity_;->access$401(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
