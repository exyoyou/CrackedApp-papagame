.class public final Lcom/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "onTabSelected",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "onTabUnselected",
        "onTabReselected",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2;->this$0:Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2;->this$0:Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->access$setStatus(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2;->this$0:Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->access$setStatus(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
