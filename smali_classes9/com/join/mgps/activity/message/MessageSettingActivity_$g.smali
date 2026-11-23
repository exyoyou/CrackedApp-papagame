.class Lcom/join/mgps/activity/message/MessageSettingActivity_$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageSettingActivity_;->setNotifresult(Lcom/join/mgps/dto/AccountResultMainBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/AccountResultMainBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/message/MessageSettingActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageSettingActivity_;Lcom/join/mgps/dto/AccountResultMainBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$result",
            "val$num"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->d:Lcom/join/mgps/activity/message/MessageSettingActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->b:Lcom/join/mgps/dto/AccountResultMainBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->d:Lcom/join/mgps/activity/message/MessageSettingActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->b:Lcom/join/mgps/dto/AccountResultMainBean;

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->access$201(Lcom/join/mgps/activity/message/MessageSettingActivity_;Lcom/join/mgps/dto/AccountResultMainBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
