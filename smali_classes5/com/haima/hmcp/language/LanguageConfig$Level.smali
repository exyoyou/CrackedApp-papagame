.class public interface abstract annotation Lcom/haima/hmcp/language/LanguageConfig$Level;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/language/LanguageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Level"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CONTROL_PLAY:I = 0x2

.field public static final INIT_SDK:I = 0x0

.field public static final PLAY_BY_BUNDLE:I = 0x1

.field public static final SDK_DEFAULT:I = 0x28

.field public static final UPDATE_BY_LOCAL_CONTROL_PLAY:I = 0xc

.field public static final UPDATE_BY_LOCAL_INIT_SDK:I = 0xa

.field public static final UPDATE_BY_LOCAL_PLAY_BY_BUNDLE:I = 0xb

.field public static final UPDATE_BY_SAAS_CONFIG:I = 0x14

.field public static final UPDATE_BY_SAAS_GLOBAL_CONFIG:I = 0x1e
