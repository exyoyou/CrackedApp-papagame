.class Lcom/join/mgps/activity/MGMainActivity$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity$i;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i$a;->b:Lcom/join/mgps/activity/MGMainActivity$i;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i$a;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1500(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i$a;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1500(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i$a;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1502(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/f;)Lcom/join/android/app/common/dialog/f;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i$a;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/android/app/common/dialog/l;->a()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i$a;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    :catch_1
    :cond_1
    return-void
.end method
