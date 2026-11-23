.class Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->startDrawerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$6;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$6;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->access$300(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->access$302(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Z)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$6;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->access$300(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object p1, v1, v2

    .line 28
    .line 29
    const-string p1, "Drawer animation end - isOpen: %b"

    .line 30
    .line 31
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
