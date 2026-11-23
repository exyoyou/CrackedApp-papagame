.class public final synthetic Lcom/join/android/app/common/dialog/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/android/app/common/dialog/j;

.field public final synthetic c:Lcom/join/mgps/activity/d;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/dialog/g;->b:Lcom/join/android/app/common/dialog/j;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/g;->c:Lcom/join/mgps/activity/d;

    iput p3, p0, Lcom/join/android/app/common/dialog/g;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/g;->b:Lcom/join/android/app/common/dialog/j;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/g;->c:Lcom/join/mgps/activity/d;

    iget v2, p0, Lcom/join/android/app/common/dialog/g;->d:I

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/dialog/j;->O(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/d;I)V

    return-void
.end method
