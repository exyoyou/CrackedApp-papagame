.class Lcom/join/mgps/activity/login/LoginInputPassActivity_$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity_;->onViewChanged(Lzc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$7;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity_;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$7;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity_;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
