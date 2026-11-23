.class public Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/e/tt$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x3b7,
        0x4f2,
        0x4f3,
        0x14b,
        0x4f4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->tt(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Lcom/byazt/dd/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->c:Lcom/byazt/dd/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->c:Lcom/byazt/dd/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/us/c;->tt(Lcom/byazt/dd/tt;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/z/ve;->c(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public tt(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "market_openapp_cancel"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->c:Lcom/byazt/dd/tt;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/byazt/z/ve;->c(Landroid/app/Activity;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public ve(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->tt:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/z/ve;->c(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
