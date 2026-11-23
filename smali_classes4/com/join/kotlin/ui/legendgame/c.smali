.class public final synthetic Lcom/join/kotlin/ui/legendgame/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

.field public final synthetic c:Lcom/join/android/app/component/video/MultiStandVideo;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/c;->b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/c;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/c;->b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/c;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->S(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/join/android/app/component/video/MultiStandVideo;)V

    return-void
.end method
