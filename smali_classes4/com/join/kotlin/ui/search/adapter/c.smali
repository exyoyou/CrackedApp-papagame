.class public final synthetic Lcom/join/kotlin/ui/search/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic d:Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;

.field public final synthetic e:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/search/adapter/c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/search/adapter/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/join/kotlin/ui/search/adapter/c;->d:Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;

    iput-object p4, p0, Lcom/join/kotlin/ui/search/adapter/c;->e:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/adapter/c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v2, p0, Lcom/join/kotlin/ui/search/adapter/c;->d:Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;

    iget-object v3, p0, Lcom/join/kotlin/ui/search/adapter/c;->e:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    invoke-static {v0, v1, v2, v3}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5;->b(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;)V

    return-void
.end method
