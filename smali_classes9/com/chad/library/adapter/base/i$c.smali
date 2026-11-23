.class public final Lcom/chad/library/adapter/base/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ls2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lt2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt2/g<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroidx/recyclerview/widget/ConcatAdapter$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "contentAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/chad/library/adapter/base/i$c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 10
    .line 11
    sget-object p1, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 12
    .line 13
    const-string v0, "DEFAULT"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/chad/library/adapter/base/i$c;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/chad/library/adapter/base/i;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/chad/library/adapter/base/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/i$c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/chad/library/adapter/base/i$c;->b:Ls2/c;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/chad/library/adapter/base/i$c;->c:Lt2/g;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/chad/library/adapter/base/i$c;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/i;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ls2/c;Lt2/g;Landroidx/recyclerview/widget/ConcatAdapter$Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public final b(Landroidx/recyclerview/widget/ConcatAdapter$Config;)Lcom/chad/library/adapter/base/i$c;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ConcatAdapter$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/chad/library/adapter/base/i$c;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Ls2/c$a;)Lcom/chad/library/adapter/base/i$c;
    .locals 1
    .param p1    # Ls2/c$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ls2/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ls2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ls2/c;->p(Ls2/c$a;)Ls2/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/i$c;->d(Ls2/c;)Lcom/chad/library/adapter/base/i$c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final d(Ls2/c;)Lcom/chad/library/adapter/base/i$c;
    .locals 0
    .param p1    # Ls2/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/c<",
            "*>;)",
            "Lcom/chad/library/adapter/base/i$c;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i$c;->b:Ls2/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Lt2/g$a;)Lcom/chad/library/adapter/base/i$c;
    .locals 4
    .param p1    # Lt2/g$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lt2/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lt2/c;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lt2/g;->y(Lt2/g$a;)Lt2/g;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/i$c;->f(Lt2/g;)Lcom/chad/library/adapter/base/i$c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final f(Lt2/g;)Lcom/chad/library/adapter/base/i$c;
    .locals 0
    .param p1    # Lt2/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt2/g<",
            "*>;)",
            "Lcom/chad/library/adapter/base/i$c;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i$c;->c:Lt2/g;

    .line 2
    .line 3
    return-object p0
.end method
