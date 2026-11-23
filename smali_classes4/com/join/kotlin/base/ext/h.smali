.class public final synthetic Lcom/join/kotlin/base/ext/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroid/view/LayoutInflater;


# direct methods
.method public synthetic constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/base/ext/h;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/ext/h;->b:Landroid/view/LayoutInflater;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/join/kotlin/base/ext/ViewBindUtilKt;->b(Landroid/view/LayoutInflater;Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    return-object p1
.end method
