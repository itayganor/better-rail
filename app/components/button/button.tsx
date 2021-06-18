import React, { useState, useMemo } from "react"
import { View, Pressable, TextStyle, ViewStyle, ButtonProps, Platform, ActivityIndicator } from "react-native"
import { color, spacing, typography } from "../../theme"
import { Text } from "../"

const BUTTON_WRAPPER: ViewStyle = {
  borderRadius: Platform.select({ ios: 12, android: 6 }),
  overflow: "hidden",
  elevation: 1,
  flex: 1,
}

const PRESSABLE_BASE: ViewStyle = {
  flex: 1,
  minHeight: 55,
  padding: spacing[4],
  backgroundColor: color.primary,
  borderRadius: Platform.select({ ios: 12, android: 6 }),
  shadowOffset: { width: 0, height: 0 },
  shadowColor: color.dim,
  shadowRadius: 1,
  shadowOpacity: 0.1,
  opacity: 1,
}

const SMALL_BUTTON: ViewStyle = {
  height: 40,
  padding: spacing[2] + 1.5,
}

const TEXT: TextStyle = {
  fontFamily: typography.primary,
  fontWeight: "700",
  fontSize: 16,
  textAlign: "center",
  color: color.whiteText,
}

const SMALL_TEXT: TextStyle = {
  fontSize: 14,
  fontWeight: "normal",
}

export interface CustomButtonProps extends ButtonProps {
  style?: ViewStyle
  containerStyle?: ViewStyle
  textStyle?: TextStyle
  loading?: boolean
  disabled?: boolean
  size?: "small"
}

export const Button = function Button(props: CustomButtonProps) {
  const [isPressed, setIsPressed] = useState(false)
  const { title, onPress, loading = false, disabled, textStyle, containerStyle, size, style } = props

  const PRESSABLE_STYLE = useMemo(() => {
    let modifiedStyles = Object.assign({}, PRESSABLE_BASE, style)
    if (size === "small") modifiedStyles = Object.assign({}, modifiedStyles, SMALL_BUTTON)
    if (Platform.OS === "ios") {
      if (isPressed) {
        modifiedStyles = Object.assign(modifiedStyles, { opacity: 0.8 })
      }
    }
    return modifiedStyles
  }, [isPressed, disabled])

  return (
    <View style={[BUTTON_WRAPPER, containerStyle]}>
      <Pressable
        style={[PRESSABLE_STYLE, disabled && { backgroundColor: color.disabled }]}
        onPressIn={() => setIsPressed(true)}
        onPressOut={() => setIsPressed(false)}
        android_ripple={{ color: color.primaryLighter }}
        onPress={() => {
          disabled ? null : onPress()
        }}
      >
        {loading ? (
          <ActivityIndicator color={color.whiteText} />
        ) : (
          <Text style={[TEXT, textStyle, size === "small" && SMALL_TEXT]}>{title}</Text>
        )}
      </Pressable>
    </View>
  )
}
