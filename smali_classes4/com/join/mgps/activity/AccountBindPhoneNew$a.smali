.class Lcom/join/mgps/activity/AccountBindPhoneNew$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/AccountBindPhoneNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$a;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "b"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$a;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 4
    .line 5
    iget-object p2, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/join/mgps/activity/AccountBindPhoneNew;->access$000(Lcom/join/mgps/activity/AccountBindPhoneNew;Landroid/widget/EditText;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
