.class public final synthetic Lcom/join/mgps/adapter/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/b;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/i4;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/i4;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/y3;->b:Lcom/join/mgps/adapter/i4;

    iput-object p2, p0, Lcom/join/mgps/adapter/y3;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y3;->b:Lcom/join/mgps/adapter/i4;

    iget-object v1, p0, Lcom/join/mgps/adapter/y3;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/i4;->f(Lcom/join/mgps/adapter/i4;Ljava/util/ArrayList;I)V

    return-void
.end method
