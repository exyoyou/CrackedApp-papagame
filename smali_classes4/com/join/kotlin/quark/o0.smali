.class public final synthetic Lcom/join/kotlin/quark/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/b;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/quark/SourceShareActivity;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/quark/o0;->b:Lcom/join/kotlin/quark/SourceShareActivity;

    iput-object p2, p0, Lcom/join/kotlin/quark/o0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/o0;->b:Lcom/join/kotlin/quark/SourceShareActivity;

    iget-object v1, p0, Lcom/join/kotlin/quark/o0;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/quark/SourceShareActivity;->m(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/List;I)V

    return-void
.end method
