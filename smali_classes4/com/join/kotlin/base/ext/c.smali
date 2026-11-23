.class public final synthetic Lcom/join/kotlin/base/ext/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingja/loadsir/callback/Callback$OnReloadListener;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/base/ext/c;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onReload(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/ext/c;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->b(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
