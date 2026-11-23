.class Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;


# direct methods
.method public constructor <init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$e;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/view/View;

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;->onClick(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method
