.class Lorg/ppsspp/ppsspp/ShortcutActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ppsspp/ppsspp/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/ShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/ShortcutActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/ShortcutActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity$b;->a:Lorg/ppsspp/ppsspp/ShortcutActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/ShortcutActivity$b;->a:Lorg/ppsspp/ppsspp/ShortcutActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/ShortcutActivity;->a(Lorg/ppsspp/ppsspp/ShortcutActivity;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
