.class Lcom/haima/hmcp/utils/HmIMEManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/HmIMEManager;->showInput(Landroid/widget/EditText;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/HmIMEManager;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/HmIMEManager;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmIMEManager$1;->this$0:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/utils/HmIMEManager$1;->val$rootView:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/utils/HmIMEManager$1;->val$et:Landroid/widget/EditText;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager$1;->val$rootView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager$1;->val$et:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
