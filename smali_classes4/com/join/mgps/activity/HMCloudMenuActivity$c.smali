.class public final Lcom/join/mgps/activity/HMCloudMenuActivity$c;
.super Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMenuActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMCloudMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity$setContentView$4$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,714:1\n1869#2,2:715\n*S KotlinDebug\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity$setContentView$4$1\n*L\n119#1:715,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity$setContentView$4$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,714:1\n1869#2,2:715\n*S KotlinDebug\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity$setContentView$4$1\n*L\n119#1:715,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$c;->a:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCombineKey(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "keys"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$c;->a:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->performClick(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public onDpad(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "directions"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$c;->a:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->performDirection(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onKeyPress(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$c;->a:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->performClick(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onTrackball(Ljava/lang/String;FF)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$c;->a:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->performTrackball(Ljava/lang/String;FF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
