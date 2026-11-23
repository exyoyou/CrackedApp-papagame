.class public final synthetic Lcom/chad/library/adapter/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/b;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/a;->a:Lcom/chad/library/adapter/base/b;

    return-void
.end method


# virtual methods
.method public final onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/a;->a:Lcom/chad/library/adapter/base/b;

    invoke-static {v0, p1, p2}, Lcom/chad/library/adapter/base/b;->k(Lcom/chad/library/adapter/base/b;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
