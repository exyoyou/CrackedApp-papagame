.class public final synthetic Lcom/join/kotlin/base/ext/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroid/view/LayoutInflater;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/base/ext/g;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/join/kotlin/base/ext/g;->c:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/join/kotlin/base/ext/g;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/ext/g;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/join/kotlin/base/ext/g;->c:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/join/kotlin/base/ext/g;->d:Z

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/base/ext/ViewBindUtilKt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Class;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    return-object p1
.end method
