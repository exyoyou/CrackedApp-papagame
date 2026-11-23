.class public final synthetic Lcom/join/kotlin/base/ext/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingja/loadsir/core/d;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/base/ext/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/ext/d;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
